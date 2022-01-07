
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ log_addr_mask; } ;
struct cec_adapter {scalar_t__ phys_addr; int is_configuring; int is_configured; int kthread_waitq; int phys_addrs; TYPE_2__ log_addrs; TYPE_1__* ops; int needs_hpd; } ;
struct TYPE_3__ {int (* adap_log_addr ) (struct cec_adapter*,int ) ;} ;


 int CEC_LOG_ADDR_INVALID ;
 scalar_t__ CEC_PHYS_ADDR_INVALID ;
 int WARN_ON (int ) ;
 int cec_flush (struct cec_adapter*) ;
 int cec_post_state_event (struct cec_adapter*) ;
 int memset (int ,int,int) ;
 int stub1 (struct cec_adapter*,int ) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void cec_adap_unconfigure(struct cec_adapter *adap)
{
 if (!adap->needs_hpd ||
     adap->phys_addr != CEC_PHYS_ADDR_INVALID)
  WARN_ON(adap->ops->adap_log_addr(adap, CEC_LOG_ADDR_INVALID));
 adap->log_addrs.log_addr_mask = 0;
 adap->is_configuring = 0;
 adap->is_configured = 0;
 memset(adap->phys_addrs, 0xff, sizeof(adap->phys_addrs));
 cec_flush(adap);
 wake_up_interruptible(&adap->kthread_waitq);
 cec_post_state_event(adap);
}
