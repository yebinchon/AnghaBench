
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct hfi1_pportdata {int cca_timer_lock; struct cca_timer* cca_timer; } ;
struct cca_timer {scalar_t__ ccti; int hrtimer; } ;
struct TYPE_6__ {TYPE_2__* entries; } ;
struct TYPE_4__ {scalar_t__ ccti_limit; } ;
struct cc_state {TYPE_3__ cong_setting; TYPE_1__ cct; } ;
struct TYPE_5__ {scalar_t__ ccti_increase; scalar_t__ ccti_timer; size_t trigger_threshold; } ;


 int HRTIMER_MODE_REL_PINNED ;
 size_t OPA_MAX_SLS ;
 struct cc_state* get_cc_state (struct hfi1_pportdata*) ;
 int hrtimer_active (int *) ;
 int hrtimer_start (int *,int ,int ) ;
 int log_cca_event (struct hfi1_pportdata*,size_t,int ,int ,int ,size_t) ;
 int ns_to_ktime (unsigned long) ;
 int set_link_ipg (struct hfi1_pportdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void process_becn(struct hfi1_pportdata *ppd, u8 sl, u32 rlid, u32 lqpn,
    u32 rqpn, u8 svc_type)
{
 struct cca_timer *cca_timer;
 u16 ccti, ccti_incr, ccti_timer, ccti_limit;
 u8 trigger_threshold;
 struct cc_state *cc_state;
 unsigned long flags;

 if (sl >= OPA_MAX_SLS)
  return;

 cc_state = get_cc_state(ppd);

 if (!cc_state)
  return;






 ccti_limit = cc_state->cct.ccti_limit;
 ccti_incr = cc_state->cong_setting.entries[sl].ccti_increase;
 ccti_timer = cc_state->cong_setting.entries[sl].ccti_timer;
 trigger_threshold =
  cc_state->cong_setting.entries[sl].trigger_threshold;

 spin_lock_irqsave(&ppd->cca_timer_lock, flags);

 cca_timer = &ppd->cca_timer[sl];
 if (cca_timer->ccti < ccti_limit) {
  if (cca_timer->ccti + ccti_incr <= ccti_limit)
   cca_timer->ccti += ccti_incr;
  else
   cca_timer->ccti = ccti_limit;
  set_link_ipg(ppd);
 }

 ccti = cca_timer->ccti;

 if (!hrtimer_active(&cca_timer->hrtimer)) {

  unsigned long nsec = 1024 * ccti_timer;

  hrtimer_start(&cca_timer->hrtimer, ns_to_ktime(nsec),
         HRTIMER_MODE_REL_PINNED);
 }

 spin_unlock_irqrestore(&ppd->cca_timer_lock, flags);

 if ((trigger_threshold != 0) && (ccti >= trigger_threshold))
  log_cca_event(ppd, sl, rlid, lqpn, rqpn, svc_type);
}
