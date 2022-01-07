
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct opa_smp {int status; } ;
struct opa_congestion_setting_entry_shadow {int ccti_min; int trigger_threshold; int ccti_timer; int ccti_increase; } ;
struct opa_congestion_setting_attr {TYPE_1__* entries; int control_map; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int cc_state_lock; struct opa_congestion_setting_entry_shadow* congestion_entries; int cc_sl_control_map; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_2__ {int ccti_min; int trigger_threshold; int ccti_timer; int ccti_increase; } ;


 int IB_SMP_INVALID_FIELD ;
 int OPA_MAX_SLS ;
 int __subn_get_opa_cong_setting (struct opa_smp*,int ,int *,struct ib_device*,int ,int *,int ) ;
 int apply_cc_state (struct hfi1_pportdata*) ;
 int be16_to_cpu (int ) ;
 int be32_to_cpu (int ) ;
 struct hfi1_pportdata* ppd_from_ibp (struct hfi1_ibport*) ;
 int reply (struct ib_mad_hdr*) ;
 scalar_t__ smp_length_check (int,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct hfi1_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int __subn_set_opa_cong_setting(struct opa_smp *smp, u32 am, u8 *data,
           struct ib_device *ibdev, u8 port,
           u32 *resp_len, u32 max_len)
{
 struct opa_congestion_setting_attr *p =
  (struct opa_congestion_setting_attr *)data;
 struct hfi1_ibport *ibp = to_iport(ibdev, port);
 struct hfi1_pportdata *ppd = ppd_from_ibp(ibp);
 struct opa_congestion_setting_entry_shadow *entries;
 int i;

 if (smp_length_check(sizeof(*p), max_len)) {
  smp->status |= IB_SMP_INVALID_FIELD;
  return reply((struct ib_mad_hdr *)smp);
 }





 spin_lock(&ppd->cc_state_lock);
 ppd->cc_sl_control_map = be32_to_cpu(p->control_map);

 entries = ppd->congestion_entries;
 for (i = 0; i < OPA_MAX_SLS; i++) {
  entries[i].ccti_increase = p->entries[i].ccti_increase;
  entries[i].ccti_timer = be16_to_cpu(p->entries[i].ccti_timer);
  entries[i].trigger_threshold =
   p->entries[i].trigger_threshold;
  entries[i].ccti_min = p->entries[i].ccti_min;
 }
 spin_unlock(&ppd->cc_state_lock);


 apply_cc_state(ppd);

 return __subn_get_opa_cong_setting(smp, am, data, ibdev, port,
        resp_len, max_len);
}
