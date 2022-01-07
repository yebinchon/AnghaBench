
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct hsi_msg {scalar_t__ status; struct cs_hsi_iface* context; } ;
struct cs_hsi_iface {int data_state; int rx_bufs; int lock; int datawait; int rx_slot; TYPE_1__* mmap_cfg; int rx_ptr_boundary; } ;
struct TYPE_2__ {int rx_ptr; } ;


 int CS_RX_DATA_RECEIVED ;
 scalar_t__ HSI_STATUS_ERROR ;
 int SSI_CHANNEL_STATE_READING ;
 int WARN_ON (int) ;
 int cs_hsi_data_read_error (struct cs_hsi_iface*,struct hsi_msg*) ;
 int cs_hsi_read_on_data (struct cs_hsi_iface*) ;
 int cs_notify_data (int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 int waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cs_hsi_read_on_data_complete(struct hsi_msg *msg)
{
 struct cs_hsi_iface *hi = msg->context;
 u32 payload;

 if (unlikely(msg->status == HSI_STATUS_ERROR)) {
  cs_hsi_data_read_error(hi, msg);
  return;
 }

 spin_lock(&hi->lock);
 WARN_ON(!(hi->data_state & SSI_CHANNEL_STATE_READING));
 hi->data_state &= ~SSI_CHANNEL_STATE_READING;
 payload = CS_RX_DATA_RECEIVED;
 payload |= hi->rx_slot;
 hi->rx_slot++;
 hi->rx_slot %= hi->rx_ptr_boundary;

 hi->mmap_cfg->rx_ptr = hi->rx_slot;
 if (unlikely(waitqueue_active(&hi->datawait)))
  wake_up_interruptible(&hi->datawait);
 spin_unlock(&hi->lock);

 cs_notify_data(payload, hi->rx_bufs);
 cs_hsi_read_on_data(hi);
}
