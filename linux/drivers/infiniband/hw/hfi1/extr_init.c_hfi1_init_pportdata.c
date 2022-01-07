
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {struct hfi1_pportdata* ppd; int qsfp_lock; int qsfp_work; } ;
struct hfi1_pportdata {int hw_pidx; int port; int* pkeys; int sm_trap_qp; int sa_qp; int cc_state; int cc_log_lock; int cc_state_lock; int cc_max_table_entries; TYPE_2__* cca_timer; int cca_timer_lock; int * hfi1_wq; TYPE_1__ qsfp_info; int hls_lock; int linkstate_active_work; int start_link_work; int link_bounce_work; int sma_message_work; int link_downgrade_work; int freeze_work; int link_down_work; int link_up_work; int link_vc_work; int part_enforce; scalar_t__* vl_xmit_flit_cnt; scalar_t__* port_vl_xmit_wait_last; int prev_link_width; struct hfi1_devdata* dd; } ;
struct hfi1_devdata {int dummy; } ;
struct cc_state {int dummy; } ;
struct TYPE_6__ {int function; } ;
struct TYPE_5__ {int sl; TYPE_3__ hrtimer; scalar_t__ ccti; struct hfi1_pportdata* ppd; } ;


 int CLOCK_MONOTONIC ;
 int C_VL_COUNT ;
 int DEFAULT_P_KEY ;
 int GFP_KERNEL ;
 int HFI1_PART_ENFORCE_IN ;
 int HRTIMER_MODE_REL ;
 int IB_CC_TABLE_CAP_DEFAULT ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int INIT_WORK (int *,int ) ;
 int LINK_WIDTH_DEFAULT ;
 int OPA_MAX_SLS ;
 int RCU_INIT_POINTER (int ,struct cc_state*) ;
 int cca_timer_fn ;
 int dd_dev_err (struct hfi1_devdata*,char*,int) ;
 int handle_freeze ;
 int handle_link_bounce ;
 int handle_link_down ;
 int handle_link_downgrade ;
 int handle_link_up ;
 int handle_sma_message ;
 int handle_start_link ;
 int handle_verify_cap ;
 int hrtimer_init (TYPE_3__*,int ,int ) ;
 struct cc_state* kzalloc (int,int ) ;
 scalar_t__ loopback ;
 int mutex_init (int *) ;
 int qsfp_event ;
 int receive_interrupt_work ;
 int spin_lock_init (int *) ;

void hfi1_init_pportdata(struct pci_dev *pdev, struct hfi1_pportdata *ppd,
    struct hfi1_devdata *dd, u8 hw_pidx, u8 port)
{
 int i;
 uint default_pkey_idx;
 struct cc_state *cc_state;

 ppd->dd = dd;
 ppd->hw_pidx = hw_pidx;
 ppd->port = port;
 ppd->prev_link_width = LINK_WIDTH_DEFAULT;




 for (i = 0; i < C_VL_COUNT + 1; i++) {
  ppd->port_vl_xmit_wait_last[i] = 0;
  ppd->vl_xmit_flit_cnt[i] = 0;
 }

 default_pkey_idx = 1;

 ppd->pkeys[default_pkey_idx] = DEFAULT_P_KEY;
 ppd->part_enforce |= HFI1_PART_ENFORCE_IN;

 if (loopback) {
  dd_dev_err(dd, "Faking data partition 0x8001 in idx %u\n",
      !default_pkey_idx);
  ppd->pkeys[!default_pkey_idx] = 0x8001;
 }

 INIT_WORK(&ppd->link_vc_work, handle_verify_cap);
 INIT_WORK(&ppd->link_up_work, handle_link_up);
 INIT_WORK(&ppd->link_down_work, handle_link_down);
 INIT_WORK(&ppd->freeze_work, handle_freeze);
 INIT_WORK(&ppd->link_downgrade_work, handle_link_downgrade);
 INIT_WORK(&ppd->sma_message_work, handle_sma_message);
 INIT_WORK(&ppd->link_bounce_work, handle_link_bounce);
 INIT_DELAYED_WORK(&ppd->start_link_work, handle_start_link);
 INIT_WORK(&ppd->linkstate_active_work, receive_interrupt_work);
 INIT_WORK(&ppd->qsfp_info.qsfp_work, qsfp_event);

 mutex_init(&ppd->hls_lock);
 spin_lock_init(&ppd->qsfp_info.qsfp_lock);

 ppd->qsfp_info.ppd = ppd;
 ppd->sm_trap_qp = 0x0;
 ppd->sa_qp = 0x1;

 ppd->hfi1_wq = ((void*)0);

 spin_lock_init(&ppd->cca_timer_lock);

 for (i = 0; i < OPA_MAX_SLS; i++) {
  hrtimer_init(&ppd->cca_timer[i].hrtimer, CLOCK_MONOTONIC,
        HRTIMER_MODE_REL);
  ppd->cca_timer[i].ppd = ppd;
  ppd->cca_timer[i].sl = i;
  ppd->cca_timer[i].ccti = 0;
  ppd->cca_timer[i].hrtimer.function = cca_timer_fn;
 }

 ppd->cc_max_table_entries = IB_CC_TABLE_CAP_DEFAULT;

 spin_lock_init(&ppd->cc_state_lock);
 spin_lock_init(&ppd->cc_log_lock);
 cc_state = kzalloc(sizeof(*cc_state), GFP_KERNEL);
 RCU_INIT_POINTER(ppd->cc_state, cc_state);
 if (!cc_state)
  goto bail;
 return;

bail:
 dd_dev_err(dd, "Congestion Control Agent disabled for port %d\n", port);
}
