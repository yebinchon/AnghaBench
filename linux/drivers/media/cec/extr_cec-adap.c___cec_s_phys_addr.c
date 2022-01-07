
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_6__ {scalar_t__ num_log_addrs; } ;
struct TYPE_5__ {int lock; int fhs; scalar_t__ unregistered; } ;
struct cec_adapter {scalar_t__ phys_addr; int transmit_in_progress; int last_initiator; TYPE_3__ log_addrs; TYPE_2__ devnode; TYPE_1__* ops; scalar_t__ needs_hpd; scalar_t__ monitor_all_cnt; int kthread_waitq; } ;
struct TYPE_4__ {scalar_t__ (* adap_enable ) (struct cec_adapter*,int) ;} ;


 scalar_t__ CEC_PHYS_ADDR_INVALID ;
 int WARN_ON (scalar_t__) ;
 int adap_monitor_all_enable ;
 scalar_t__ call_op (struct cec_adapter*,int ,int) ;
 int cec_adap_unconfigure (struct cec_adapter*) ;
 int cec_claim_log_addrs (struct cec_adapter*,int) ;
 int cec_phys_addr_exp (scalar_t__) ;
 int cec_post_state_event (struct cec_adapter*) ;
 int dprintk (int,char*,int ) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ stub1 (struct cec_adapter*,int) ;
 scalar_t__ stub2 (struct cec_adapter*,int) ;
 scalar_t__ stub3 (struct cec_adapter*,int) ;
 int wake_up_interruptible (int *) ;

void __cec_s_phys_addr(struct cec_adapter *adap, u16 phys_addr, bool block)
{
 if (phys_addr == adap->phys_addr)
  return;
 if (phys_addr != CEC_PHYS_ADDR_INVALID && adap->devnode.unregistered)
  return;

 dprintk(1, "new physical address %x.%x.%x.%x\n",
  cec_phys_addr_exp(phys_addr));
 if (phys_addr == CEC_PHYS_ADDR_INVALID ||
     adap->phys_addr != CEC_PHYS_ADDR_INVALID) {
  adap->phys_addr = CEC_PHYS_ADDR_INVALID;
  cec_post_state_event(adap);
  cec_adap_unconfigure(adap);

  if (adap->monitor_all_cnt)
   WARN_ON(call_op(adap, adap_monitor_all_enable, 0));
  mutex_lock(&adap->devnode.lock);
  if (adap->needs_hpd || list_empty(&adap->devnode.fhs)) {
   WARN_ON(adap->ops->adap_enable(adap, 0));
   adap->transmit_in_progress = 0;
   wake_up_interruptible(&adap->kthread_waitq);
  }
  mutex_unlock(&adap->devnode.lock);
  if (phys_addr == CEC_PHYS_ADDR_INVALID)
   return;
 }

 mutex_lock(&adap->devnode.lock);
 adap->last_initiator = 0xff;
 adap->transmit_in_progress = 0;

 if ((adap->needs_hpd || list_empty(&adap->devnode.fhs)) &&
     adap->ops->adap_enable(adap, 1)) {
  mutex_unlock(&adap->devnode.lock);
  return;
 }

 if (adap->monitor_all_cnt &&
     call_op(adap, adap_monitor_all_enable, 1)) {
  if (adap->needs_hpd || list_empty(&adap->devnode.fhs))
   WARN_ON(adap->ops->adap_enable(adap, 0));
  mutex_unlock(&adap->devnode.lock);
  return;
 }
 mutex_unlock(&adap->devnode.lock);

 adap->phys_addr = phys_addr;
 cec_post_state_event(adap);
 if (adap->log_addrs.num_log_addrs)
  cec_claim_log_addrs(adap, block);
}
