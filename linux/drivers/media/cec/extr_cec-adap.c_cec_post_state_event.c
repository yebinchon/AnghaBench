
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log_addr_mask; int phys_addr; } ;
struct cec_event {TYPE_1__ state_change; int event; } ;
struct TYPE_4__ {int log_addr_mask; } ;
struct cec_adapter {TYPE_2__ log_addrs; int phys_addr; } ;


 int CEC_EVENT_STATE_CHANGE ;
 int cec_queue_event (struct cec_adapter*,struct cec_event*) ;

__attribute__((used)) static void cec_post_state_event(struct cec_adapter *adap)
{
 struct cec_event ev = {
  .event = CEC_EVENT_STATE_CHANGE,
 };

 ev.state_change.phys_addr = adap->phys_addr;
 ev.state_change.log_addr_mask = adap->log_addrs.log_addr_mask;
 cec_queue_event(adap, &ev);
}
