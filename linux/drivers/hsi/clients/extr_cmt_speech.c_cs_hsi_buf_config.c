
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cs_hsi_iface {unsigned int iface_state; int lock; int pm_qos_req; scalar_t__ buf_size; scalar_t__ slot_size; scalar_t__ tx_slot; scalar_t__ rx_slot; int flags; TYPE_1__* mmap_cfg; int data_state; } ;
struct cs_buffer_config {int flags; scalar_t__ buf_size; } ;
struct TYPE_2__ {scalar_t__ buf_size; } ;


 int CS_QOS_LATENCY_FOR_DATA_USEC ;
 unsigned int CS_STATE_CONFIGURED ;
 unsigned int CS_STATE_OPENED ;
 int PM_QOS_CPU_DMA_LATENCY ;
 int WARN_ON (int ) ;
 int check_buf_params (struct cs_hsi_iface*,struct cs_buffer_config*) ;
 int cs_hsi_data_disable (struct cs_hsi_iface*,unsigned int) ;
 int cs_hsi_data_enable (struct cs_hsi_iface*,struct cs_buffer_config*) ;
 int cs_hsi_data_sync (struct cs_hsi_iface*) ;
 int cs_hsi_read_on_data (struct cs_hsi_iface*) ;
 int cs_state_xfer_active (int ) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int pm_qos_add_request (int *,int ,int ) ;
 int pm_qos_remove_request (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int cs_hsi_buf_config(struct cs_hsi_iface *hi,
     struct cs_buffer_config *buf_cfg)
{
 int r = 0;
 unsigned int old_state = hi->iface_state;

 spin_lock_bh(&hi->lock);

 if (old_state == CS_STATE_CONFIGURED)
  hi->iface_state = CS_STATE_OPENED;
 spin_unlock_bh(&hi->lock);





 r = cs_hsi_data_sync(hi);
 if (r < 0)
  return r;

 WARN_ON(cs_state_xfer_active(hi->data_state));

 spin_lock_bh(&hi->lock);
 r = check_buf_params(hi, buf_cfg);
 if (r < 0)
  goto error;

 hi->buf_size = buf_cfg->buf_size;
 hi->mmap_cfg->buf_size = hi->buf_size;
 hi->flags = buf_cfg->flags;

 hi->rx_slot = 0;
 hi->tx_slot = 0;
 hi->slot_size = 0;

 if (hi->buf_size)
  cs_hsi_data_enable(hi, buf_cfg);
 else
  cs_hsi_data_disable(hi, old_state);

 spin_unlock_bh(&hi->lock);

 if (old_state != hi->iface_state) {
  if (hi->iface_state == CS_STATE_CONFIGURED) {
   pm_qos_add_request(&hi->pm_qos_req,
    PM_QOS_CPU_DMA_LATENCY,
    CS_QOS_LATENCY_FOR_DATA_USEC);
   local_bh_disable();
   cs_hsi_read_on_data(hi);
   local_bh_enable();
  } else if (old_state == CS_STATE_CONFIGURED) {
   pm_qos_remove_request(&hi->pm_qos_req);
  }
 }
 return r;

error:
 spin_unlock_bh(&hi->lock);
 return r;
}
