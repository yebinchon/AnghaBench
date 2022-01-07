
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cec_adapter {int is_configuring; int lock; int config_completion; int * kthread_config; int name; scalar_t__ is_configured; } ;


 scalar_t__ IS_ERR (int *) ;
 scalar_t__ WARN_ON (int) ;
 int cec_config_thread_func ;
 int init_completion (int *) ;
 int * kthread_run (int ,struct cec_adapter*,char*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void cec_claim_log_addrs(struct cec_adapter *adap, bool block)
{
 if (WARN_ON(adap->is_configuring || adap->is_configured))
  return;

 init_completion(&adap->config_completion);


 adap->is_configuring = 1;
 adap->kthread_config = kthread_run(cec_config_thread_func, adap,
        "ceccfg-%s", adap->name);
 if (IS_ERR(adap->kthread_config)) {
  adap->kthread_config = ((void*)0);
 } else if (block) {
  mutex_unlock(&adap->lock);
  wait_for_completion(&adap->config_completion);
  mutex_lock(&adap->lock);
 }
}
