
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxt_data {int in_bootloader; int irq; int bl_completion; } ;
struct firmware {unsigned int size; int* data; } ;
struct device {int dummy; } ;


 int MXT_BOOT_VALUE ;
 int MXT_COMMAND_RESET ;
 int MXT_FRAME_CRC_PASS ;
 int MXT_FW_RESET_TIME ;
 unsigned int MXT_RESET_TIME ;
 int MXT_WAITING_BOOTLOAD_CMD ;
 int MXT_WAITING_FRAME_DATA ;
 int dev_dbg (struct device*,char*,unsigned int,unsigned int,...) ;
 int dev_err (struct device*,char*,...) ;
 struct mxt_data* dev_get_drvdata (struct device*) ;
 int dev_info (struct device*,char*) ;
 int disable_irq (int ) ;
 int enable_irq (int ) ;
 int msleep (unsigned int) ;
 int mxt_bootloader_write (struct mxt_data*,int*,unsigned int) ;
 int mxt_check_bootloader (struct mxt_data*,int ,int) ;
 int mxt_check_firmware_format (struct device*,struct firmware const*) ;
 int mxt_free_input_device (struct mxt_data*) ;
 int mxt_free_object_table (struct mxt_data*) ;
 int mxt_lookup_bootloader_address (struct mxt_data*,int ) ;
 int mxt_send_bootloader_cmd (struct mxt_data*,int) ;
 int mxt_t6_command (struct mxt_data*,int ,int ,int) ;
 int mxt_wait_for_completion (struct mxt_data*,int *,int ) ;
 int reinit_completion (int *) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char const*,struct device*) ;

__attribute__((used)) static int mxt_load_fw(struct device *dev, const char *fn)
{
 struct mxt_data *data = dev_get_drvdata(dev);
 const struct firmware *fw = ((void*)0);
 unsigned int frame_size;
 unsigned int pos = 0;
 unsigned int retry = 0;
 unsigned int frame = 0;
 int ret;

 ret = request_firmware(&fw, fn, dev);
 if (ret) {
  dev_err(dev, "Unable to open firmware %s\n", fn);
  return ret;
 }


 ret = mxt_check_firmware_format(dev, fw);
 if (ret)
  goto release_firmware;

 if (!data->in_bootloader) {

  data->in_bootloader = 1;

  ret = mxt_t6_command(data, MXT_COMMAND_RESET,
         MXT_BOOT_VALUE, 0);
  if (ret)
   goto release_firmware;

  msleep(MXT_RESET_TIME);


  ret = mxt_lookup_bootloader_address(data, 0);
  if (ret)
   goto release_firmware;

  mxt_free_input_device(data);
  mxt_free_object_table(data);
 } else {
  enable_irq(data->irq);
 }

 reinit_completion(&data->bl_completion);

 ret = mxt_check_bootloader(data, MXT_WAITING_BOOTLOAD_CMD, 0);
 if (ret) {

  ret = mxt_check_bootloader(data, MXT_WAITING_FRAME_DATA, 0);
  if (ret)
   goto disable_irq;
 } else {
  dev_info(dev, "Unlocking bootloader\n");


  ret = mxt_send_bootloader_cmd(data, 1);
  if (ret)
   goto disable_irq;
 }

 while (pos < fw->size) {
  ret = mxt_check_bootloader(data, MXT_WAITING_FRAME_DATA, 1);
  if (ret)
   goto disable_irq;

  frame_size = ((*(fw->data + pos) << 8) | *(fw->data + pos + 1));


  frame_size += 2;


  ret = mxt_bootloader_write(data, fw->data + pos, frame_size);
  if (ret)
   goto disable_irq;

  ret = mxt_check_bootloader(data, MXT_FRAME_CRC_PASS, 1);
  if (ret) {
   retry++;


   msleep(retry * 20);

   if (retry > 20) {
    dev_err(dev, "Retry count exceeded\n");
    goto disable_irq;
   }
  } else {
   retry = 0;
   pos += frame_size;
   frame++;
  }

  if (frame % 50 == 0)
   dev_dbg(dev, "Sent %d frames, %d/%zd bytes\n",
    frame, pos, fw->size);
 }


 ret = mxt_wait_for_completion(data, &data->bl_completion,
          MXT_FW_RESET_TIME);
 if (ret)
  goto disable_irq;

 dev_dbg(dev, "Sent %d frames, %d bytes\n", frame, pos);






 mxt_wait_for_completion(data, &data->bl_completion, MXT_FW_RESET_TIME);

 data->in_bootloader = 0;

disable_irq:
 disable_irq(data->irq);
release_firmware:
 release_firmware(fw);
 return ret;
}
