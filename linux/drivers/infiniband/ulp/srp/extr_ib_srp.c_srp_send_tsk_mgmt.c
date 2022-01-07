
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct srp_tsk_mgmt {int tag; int task_tag; int tsk_mgmt_func; int lun; int opcode; } ;
struct srp_target_port {scalar_t__ qp_in_error; TYPE_2__* srp_host; struct srp_rport* rport; } ;
struct srp_rport {int mutex; } ;
struct srp_rdma_ch {int tsk_mgmt_tag; int tsk_mgmt_status; int tsk_mgmt_done; int lock; int connected; struct srp_target_port* target; } ;
struct srp_iu {int num_sge; int dma; struct srp_tsk_mgmt* buf; } ;
struct ib_device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* srp_dev; } ;
struct TYPE_3__ {struct ib_device* dev; } ;


 int DMA_TO_DEVICE ;
 int SRP_ABORT_TIMEOUT_MS ;
 int SRP_IU_TSK_MGMT ;
 int SRP_TAG_TSK_MGMT ;
 int SRP_TSK_MGMT ;
 int WARN_ON_ONCE (int) ;
 struct srp_iu* __srp_get_tx_iu (struct srp_rdma_ch*,int ) ;
 int ib_dma_sync_single_for_cpu (struct ib_device*,int ,int,int ) ;
 int ib_dma_sync_single_for_device (struct ib_device*,int ,int,int ) ;
 int init_completion (int *) ;
 int int_to_scsilun (int ,int *) ;
 int memset (struct srp_tsk_mgmt*,int ,int) ;
 int msecs_to_jiffies (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ srp_post_send (struct srp_rdma_ch*,struct srp_iu*,int) ;
 int srp_put_tx_iu (struct srp_rdma_ch*,struct srp_iu*,int ) ;
 int wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int srp_send_tsk_mgmt(struct srp_rdma_ch *ch, u64 req_tag, u64 lun,
        u8 func, u8 *status)
{
 struct srp_target_port *target = ch->target;
 struct srp_rport *rport = target->rport;
 struct ib_device *dev = target->srp_host->srp_dev->dev;
 struct srp_iu *iu;
 struct srp_tsk_mgmt *tsk_mgmt;
 int res;

 if (!ch->connected || target->qp_in_error)
  return -1;





 mutex_lock(&rport->mutex);
 spin_lock_irq(&ch->lock);
 iu = __srp_get_tx_iu(ch, SRP_IU_TSK_MGMT);
 spin_unlock_irq(&ch->lock);

 if (!iu) {
  mutex_unlock(&rport->mutex);

  return -1;
 }

 iu->num_sge = 1;

 ib_dma_sync_single_for_cpu(dev, iu->dma, sizeof *tsk_mgmt,
       DMA_TO_DEVICE);
 tsk_mgmt = iu->buf;
 memset(tsk_mgmt, 0, sizeof *tsk_mgmt);

 tsk_mgmt->opcode = SRP_TSK_MGMT;
 int_to_scsilun(lun, &tsk_mgmt->lun);
 tsk_mgmt->tsk_mgmt_func = func;
 tsk_mgmt->task_tag = req_tag;

 spin_lock_irq(&ch->lock);
 ch->tsk_mgmt_tag = (ch->tsk_mgmt_tag + 1) | SRP_TAG_TSK_MGMT;
 tsk_mgmt->tag = ch->tsk_mgmt_tag;
 spin_unlock_irq(&ch->lock);

 init_completion(&ch->tsk_mgmt_done);

 ib_dma_sync_single_for_device(dev, iu->dma, sizeof *tsk_mgmt,
          DMA_TO_DEVICE);
 if (srp_post_send(ch, iu, sizeof(*tsk_mgmt))) {
  srp_put_tx_iu(ch, iu, SRP_IU_TSK_MGMT);
  mutex_unlock(&rport->mutex);

  return -1;
 }
 res = wait_for_completion_timeout(&ch->tsk_mgmt_done,
     msecs_to_jiffies(SRP_ABORT_TIMEOUT_MS));
 if (res > 0 && status)
  *status = ch->tsk_mgmt_status;
 mutex_unlock(&rport->mutex);

 WARN_ON_ONCE(res < 0);

 return res > 0 ? 0 : -1;
}
