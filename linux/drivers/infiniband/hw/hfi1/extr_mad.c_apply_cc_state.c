
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct opa_congestion_setting_entry {int dummy; } ;
struct ib_cc_table_entry {int dummy; } ;
struct hfi1_pportdata {int total_cct_entry; int cc_state_lock; int cc_state; int congestion_entries; int cc_sl_control_map; int ccti_entries; } ;
struct TYPE_4__ {int entries; int control_map; int port_control; } ;
struct TYPE_3__ {int ccti_limit; int entries; } ;
struct cc_state {TYPE_2__ cong_setting; TYPE_1__ cct; } ;


 int GFP_KERNEL ;
 int IB_CC_CCS_PC_SL_BASED ;
 int OPA_MAX_SLS ;
 struct cc_state* get_cc_state_protected (struct hfi1_pportdata*) ;
 int kfree (struct cc_state*) ;
 int kfree_rcu (struct cc_state*,int ) ;
 struct cc_state* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 int rcu ;
 int rcu_assign_pointer (int ,struct cc_state*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void apply_cc_state(struct hfi1_pportdata *ppd)
{
 struct cc_state *old_cc_state, *new_cc_state;

 new_cc_state = kzalloc(sizeof(*new_cc_state), GFP_KERNEL);
 if (!new_cc_state)
  return;





 spin_lock(&ppd->cc_state_lock);

 old_cc_state = get_cc_state_protected(ppd);
 if (!old_cc_state) {

  spin_unlock(&ppd->cc_state_lock);
  kfree(new_cc_state);
  return;
 }

 *new_cc_state = *old_cc_state;

 if (ppd->total_cct_entry)
  new_cc_state->cct.ccti_limit = ppd->total_cct_entry - 1;
 else
  new_cc_state->cct.ccti_limit = 0;

 memcpy(new_cc_state->cct.entries, ppd->ccti_entries,
        ppd->total_cct_entry * sizeof(struct ib_cc_table_entry));

 new_cc_state->cong_setting.port_control = IB_CC_CCS_PC_SL_BASED;
 new_cc_state->cong_setting.control_map = ppd->cc_sl_control_map;
 memcpy(new_cc_state->cong_setting.entries, ppd->congestion_entries,
        OPA_MAX_SLS * sizeof(struct opa_congestion_setting_entry));

 rcu_assign_pointer(ppd->cc_state, new_cc_state);

 spin_unlock(&ppd->cc_state_lock);

 kfree_rcu(old_cc_state, rcu);
}
