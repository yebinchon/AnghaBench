
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ims_pcu {int async_firmware_done; int dev; void* fw_end_addr; void* fw_start_addr; int * cmd_buf; } ;


 int GFP_KERNEL ;
 int IMS_PCU_CMD_RESPONSE_TIMEOUT ;
 int IMS_PCU_DATA_OFFSET ;
 int IMS_PCU_FIRMWARE_NAME ;
 int QUERY_DEVICE ;
 int THIS_MODULE ;
 int complete (int *) ;
 int dev_err (int ,char*) ;
 int dev_info (int ,char*,void*,void*) ;
 void* get_unaligned_le32 (int *) ;
 int ims_pcu_execute_bl_command (struct ims_pcu*,int ,int *,int ,int ) ;
 int ims_pcu_process_async_firmware ;
 int request_firmware_nowait (int ,int,int ,int ,int ,struct ims_pcu*,int ) ;

__attribute__((used)) static int ims_pcu_init_bootloader_mode(struct ims_pcu *pcu)
{
 int error;

 error = ims_pcu_execute_bl_command(pcu, QUERY_DEVICE, ((void*)0), 0,
        IMS_PCU_CMD_RESPONSE_TIMEOUT);
 if (error) {
  dev_err(pcu->dev, "Bootloader does not respond, aborting\n");
  return error;
 }

 pcu->fw_start_addr =
  get_unaligned_le32(&pcu->cmd_buf[IMS_PCU_DATA_OFFSET + 11]);
 pcu->fw_end_addr =
  get_unaligned_le32(&pcu->cmd_buf[IMS_PCU_DATA_OFFSET + 15]);

 dev_info(pcu->dev,
   "Device is in bootloader mode (addr 0x%08x-0x%08x), requesting firmware\n",
   pcu->fw_start_addr, pcu->fw_end_addr);

 error = request_firmware_nowait(THIS_MODULE, 1,
     IMS_PCU_FIRMWARE_NAME,
     pcu->dev, GFP_KERNEL, pcu,
     ims_pcu_process_async_firmware);
 if (error) {

  complete(&pcu->async_firmware_done);
 }

 return 0;
}
