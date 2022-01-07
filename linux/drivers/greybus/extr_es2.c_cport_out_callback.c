
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct urb {struct gb_message* context; } ;
struct gb_message {int * hcpriv; int header; TYPE_2__* operation; } ;
struct gb_host_device {int dummy; } ;
struct es2_ap_dev {int cport_out_urb_lock; } ;
struct TYPE_4__ {TYPE_1__* connection; } ;
struct TYPE_3__ {struct gb_host_device* hd; } ;


 int check_urb_status (struct urb*) ;
 int free_urb (struct es2_ap_dev*,struct urb*) ;
 int gb_message_cport_clear (int ) ;
 int greybus_message_sent (struct gb_host_device*,struct gb_message*,int) ;
 struct es2_ap_dev* hd_to_es2 (struct gb_host_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cport_out_callback(struct urb *urb)
{
 struct gb_message *message = urb->context;
 struct gb_host_device *hd = message->operation->connection->hd;
 struct es2_ap_dev *es2 = hd_to_es2(hd);
 int status = check_urb_status(urb);
 unsigned long flags;

 gb_message_cport_clear(message->header);

 spin_lock_irqsave(&es2->cport_out_urb_lock, flags);
 message->hcpriv = ((void*)0);
 spin_unlock_irqrestore(&es2->cport_out_urb_lock, flags);





 greybus_message_sent(hd, message, status);

 free_urb(es2, urb);
}
