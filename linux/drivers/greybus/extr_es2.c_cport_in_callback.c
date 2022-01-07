
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct urb {int actual_length; struct gb_operation_msg_hdr* transfer_buffer; TYPE_1__* dev; struct gb_host_device* context; } ;
struct gb_operation_msg_hdr {int dummy; } ;
struct gb_host_device {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EAGAIN ;
 int ENOENT ;
 int EPROTO ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int check_urb_status (struct urb*) ;
 scalar_t__ cport_id_valid (struct gb_host_device*,int) ;
 int dev_err (struct device*,char*,...) ;
 int gb_message_cport_unpack (struct gb_operation_msg_hdr*) ;
 int greybus_data_rcvd (struct gb_host_device*,int,struct gb_operation_msg_hdr*,int) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void cport_in_callback(struct urb *urb)
{
 struct gb_host_device *hd = urb->context;
 struct device *dev = &urb->dev->dev;
 struct gb_operation_msg_hdr *header;
 int status = check_urb_status(urb);
 int retval;
 u16 cport_id;

 if (status) {
  if ((status == -EAGAIN) || (status == -EPROTO))
   goto exit;


  if (status == -ENOENT || status == -ESHUTDOWN)
   return;

  dev_err(dev, "urb cport in error %d (dropped)\n", status);
  return;
 }

 if (urb->actual_length < sizeof(*header)) {
  dev_err(dev, "short message received\n");
  goto exit;
 }


 header = urb->transfer_buffer;
 cport_id = gb_message_cport_unpack(header);

 if (cport_id_valid(hd, cport_id)) {
  greybus_data_rcvd(hd, cport_id, urb->transfer_buffer,
      urb->actual_length);
 } else {
  dev_err(dev, "invalid cport id %u received\n", cport_id);
 }
exit:

 retval = usb_submit_urb(urb, GFP_ATOMIC);
 if (retval)
  dev_err(dev, "failed to resubmit in-urb: %d\n", retval);
}
