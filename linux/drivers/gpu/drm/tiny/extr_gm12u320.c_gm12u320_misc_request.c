
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct gm12u320_device {void** cmd_buf; int udev; } ;


 int CMD_SIZE ;
 int CMD_TIMEOUT ;
 int DATA_TIMEOUT ;
 int EIO ;
 int GM12U320_ERR (char*,int) ;
 int MISC_RCV_EPT ;
 int MISC_SND_EPT ;
 int MISC_VALUE_SIZE ;
 int READ_STATUS_SIZE ;
 int cmd_misc ;
 int memcpy (void**,int *,int) ;
 int usb_bulk_msg (int ,int ,void**,int,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int gm12u320_misc_request(struct gm12u320_device *gm12u320,
     u8 req_a, u8 req_b,
     u8 arg_a, u8 arg_b, u8 arg_c, u8 arg_d)
{
 int ret, len;

 memcpy(gm12u320->cmd_buf, &cmd_misc, CMD_SIZE);
 gm12u320->cmd_buf[20] = req_a;
 gm12u320->cmd_buf[21] = req_b;
 gm12u320->cmd_buf[22] = arg_a;
 gm12u320->cmd_buf[23] = arg_b;
 gm12u320->cmd_buf[24] = arg_c;
 gm12u320->cmd_buf[25] = arg_d;


 ret = usb_bulk_msg(gm12u320->udev,
      usb_sndbulkpipe(gm12u320->udev, MISC_SND_EPT),
      gm12u320->cmd_buf, CMD_SIZE, &len, CMD_TIMEOUT);
 if (ret || len != CMD_SIZE) {
  GM12U320_ERR("Misc. req. error %d\n", ret);
  return -EIO;
 }


 ret = usb_bulk_msg(gm12u320->udev,
      usb_rcvbulkpipe(gm12u320->udev, MISC_RCV_EPT),
      gm12u320->cmd_buf, MISC_VALUE_SIZE, &len,
      DATA_TIMEOUT);
 if (ret || len != MISC_VALUE_SIZE) {
  GM12U320_ERR("Misc. value error %d\n", ret);
  return -EIO;
 }



 ret = usb_bulk_msg(gm12u320->udev,
      usb_rcvbulkpipe(gm12u320->udev, MISC_RCV_EPT),
      gm12u320->cmd_buf, READ_STATUS_SIZE, &len,
      CMD_TIMEOUT);
 if (ret || len != READ_STATUS_SIZE) {
  GM12U320_ERR("Misc. status error %d\n", ret);
  return -EIO;
 }

 return 0;
}
