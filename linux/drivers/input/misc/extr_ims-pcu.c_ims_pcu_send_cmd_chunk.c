
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ims_pcu {int dev; int urb_out_buf; TYPE_1__* ep_out; int udev; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int IMS_PCU_CMD_WRITE_TIMEOUT ;
 int dev_dbg (int ,char*,int ,int,int) ;
 int usb_bulk_msg (int ,int ,int ,int,int *,int ) ;
 int usb_sndbulkpipe (int ,int ) ;

__attribute__((used)) static int ims_pcu_send_cmd_chunk(struct ims_pcu *pcu,
      u8 command, int chunk, int len)
{
 int error;

 error = usb_bulk_msg(pcu->udev,
        usb_sndbulkpipe(pcu->udev,
          pcu->ep_out->bEndpointAddress),
        pcu->urb_out_buf, len,
        ((void*)0), IMS_PCU_CMD_WRITE_TIMEOUT);
 if (error < 0) {
  dev_dbg(pcu->dev,
   "Sending 0x%02x command failed at chunk %d: %d\n",
   command, chunk, error);
  return error;
 }

 return 0;
}
