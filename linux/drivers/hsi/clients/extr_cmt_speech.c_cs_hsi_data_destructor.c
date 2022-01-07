
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hsi_msg {scalar_t__ ttype; int status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {scalar_t__ iface_state; int data_state; int lock; int datawait; } ;
struct TYPE_4__ {TYPE_1__* cl; } ;
struct TYPE_3__ {int device; } ;


 scalar_t__ CS_STATE_CLOSED ;
 scalar_t__ HSI_MSG_READ ;
 int HSI_STATUS_COMPLETED ;
 int SSI_CHANNEL_STATE_POLL ;
 int SSI_CHANNEL_STATE_READING ;
 int SSI_CHANNEL_STATE_WRITING ;
 TYPE_2__ cs_char_data ;
 int dev_dbg (int *,char*,char const*) ;
 int dev_err (int *,char*,char const*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int ) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cs_hsi_data_destructor(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;
 const char *dir = (msg->ttype == HSI_MSG_READ) ? "TX" : "RX";

 dev_dbg(&cs_char_data.cl->device, "Freeing data %s message\n", dir);

 spin_lock(&hi->lock);
 if (hi->iface_state != CS_STATE_CLOSED)
  dev_err(&cs_char_data.cl->device,
    "Data %s flush while device active\n", dir);
 if (msg->ttype == HSI_MSG_READ)
  hi->data_state &=
   ~(SSI_CHANNEL_STATE_POLL | SSI_CHANNEL_STATE_READING);
 else
  hi->data_state &= ~SSI_CHANNEL_STATE_WRITING;

 msg->status = HSI_STATUS_COMPLETED;
 if (unlikely(waitqueue_active(&hi->datawait)))
  wake_up_interruptible(&hi->datawait);

 spin_unlock(&hi->lock);
}
