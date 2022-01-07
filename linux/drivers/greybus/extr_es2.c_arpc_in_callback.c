
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct urb {int actual_length; struct arpc_response_message* transfer_buffer; TYPE_1__* dev; struct es2_ap_dev* context; } ;
struct es2_ap_dev {int arpc_lock; } ;
struct device {int dummy; } ;
struct arpc_response_message {int id; } ;
struct arpc {int response_received; int resp; } ;
struct TYPE_2__ {struct device dev; } ;


 int EAGAIN ;
 int ENOENT ;
 int EPROTO ;
 int ESHUTDOWN ;
 int GFP_ATOMIC ;
 int arpc_del (struct es2_ap_dev*,struct arpc*) ;
 struct arpc* arpc_find (struct es2_ap_dev*,int ) ;
 int check_urb_status (struct urb*) ;
 int complete (int *) ;
 int dev_err (struct device*,char*,...) ;
 int le16_to_cpu (int ) ;
 int memcpy (int ,struct arpc_response_message*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static void arpc_in_callback(struct urb *urb)
{
 struct es2_ap_dev *es2 = urb->context;
 struct device *dev = &urb->dev->dev;
 int status = check_urb_status(urb);
 struct arpc *rpc;
 struct arpc_response_message *resp;
 unsigned long flags;
 int retval;

 if (status) {
  if ((status == -EAGAIN) || (status == -EPROTO))
   goto exit;


  if (status == -ENOENT || status == -ESHUTDOWN)
   return;

  dev_err(dev, "arpc in-urb error %d (dropped)\n", status);
  return;
 }

 if (urb->actual_length < sizeof(*resp)) {
  dev_err(dev, "short aprc response received\n");
  goto exit;
 }

 resp = urb->transfer_buffer;
 spin_lock_irqsave(&es2->arpc_lock, flags);
 rpc = arpc_find(es2, resp->id);
 if (!rpc) {
  dev_err(dev, "invalid arpc response id received: %u\n",
   le16_to_cpu(resp->id));
  spin_unlock_irqrestore(&es2->arpc_lock, flags);
  goto exit;
 }

 arpc_del(es2, rpc);
 memcpy(rpc->resp, resp, sizeof(*resp));
 complete(&rpc->response_received);
 spin_unlock_irqrestore(&es2->arpc_lock, flags);

exit:

 retval = usb_submit_urb(urb, GFP_ATOMIC);
 if (retval)
  dev_err(dev, "failed to resubmit arpc in-urb: %d\n", retval);
}
