
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sdma_txreq {int tlen; scalar_t__ num_desc; int list; scalar_t__ sn; scalar_t__ next_descq_idx; int wait; } ;
struct sdma_engine {scalar_t__ desc_avail; int descq_full_count; int flush_worker; int cpu; int flushlist_lock; int flushlist; int tail_sn; int tail_lock; } ;
struct iowait_work {int dummy; } ;


 int EAGAIN ;
 int ECOMM ;
 int EINVAL ;
 int __sdma_running (struct sdma_engine*) ;
 int iowait_inc_wait_count (struct iowait_work*,scalar_t__) ;
 int iowait_ioww_to_iow (struct iowait_work*) ;
 int iowait_sdma_inc (int ) ;
 int list_add_tail (int *,int *) ;
 int queue_work_on (int ,int ,int *) ;
 int sdma_check_progress (struct sdma_engine*,struct iowait_work*,struct sdma_txreq*,int) ;
 int sdma_update_tail (struct sdma_engine*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int submit_tx (struct sdma_engine*,struct sdma_txreq*) ;
 int system_highpri_wq ;
 int trace_hfi1_sdma_in_sn (struct sdma_engine*,scalar_t__) ;
 scalar_t__ unlikely (int) ;

int sdma_send_txreq(struct sdma_engine *sde,
      struct iowait_work *wait,
      struct sdma_txreq *tx,
      bool pkts_sent)
{
 int ret = 0;
 u16 tail;
 unsigned long flags;


 if (unlikely(tx->tlen))
  return -EINVAL;
 tx->wait = iowait_ioww_to_iow(wait);
 spin_lock_irqsave(&sde->tail_lock, flags);
retry:
 if (unlikely(!__sdma_running(sde)))
  goto unlock_noconn;
 if (unlikely(tx->num_desc > sde->desc_avail))
  goto nodesc;
 tail = submit_tx(sde, tx);
 if (wait)
  iowait_sdma_inc(iowait_ioww_to_iow(wait));
 sdma_update_tail(sde, tail);
unlock:
 spin_unlock_irqrestore(&sde->tail_lock, flags);
 return ret;
unlock_noconn:
 if (wait)
  iowait_sdma_inc(iowait_ioww_to_iow(wait));
 tx->next_descq_idx = 0;




 spin_lock(&sde->flushlist_lock);
 list_add_tail(&tx->list, &sde->flushlist);
 spin_unlock(&sde->flushlist_lock);
 iowait_inc_wait_count(wait, tx->num_desc);
 queue_work_on(sde->cpu, system_highpri_wq, &sde->flush_worker);
 ret = -ECOMM;
 goto unlock;
nodesc:
 ret = sdma_check_progress(sde, wait, tx, pkts_sent);
 if (ret == -EAGAIN) {
  ret = 0;
  goto retry;
 }
 sde->descq_full_count++;
 goto unlock;
}
