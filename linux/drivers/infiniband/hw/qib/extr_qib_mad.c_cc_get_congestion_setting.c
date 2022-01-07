
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qib_pportdata {int cc_shadow_lock; TYPE_1__* congestion_entries_shadow; } ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_mad {scalar_t__ mgmt_data; } ;
struct ib_cc_congestion_setting_attr {TYPE_2__* entries; void* control_map; void* port_control; } ;
struct ib_cc_congestion_entry_shadow {int ccti_min; int trigger_threshold; int ccti_timer; int ccti_increase; } ;
struct TYPE_4__ {int ccti_min; int trigger_threshold; void* ccti_timer; int ccti_increase; } ;
struct TYPE_3__ {int control_map; int port_control; struct ib_cc_congestion_entry_shadow* entries; } ;


 int IB_CC_CCS_ENTRIES ;
 void* cpu_to_be16 (int ) ;
 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int cc_get_congestion_setting(struct ib_cc_mad *ccp,
    struct ib_device *ibdev, u8 port)
{
 int i;
 struct ib_cc_congestion_setting_attr *p =
  (struct ib_cc_congestion_setting_attr *)ccp->mgmt_data;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 struct ib_cc_congestion_entry_shadow *entries;

 memset(ccp->mgmt_data, 0, sizeof(ccp->mgmt_data));

 spin_lock(&ppd->cc_shadow_lock);

 entries = ppd->congestion_entries_shadow->entries;
 p->port_control = cpu_to_be16(
  ppd->congestion_entries_shadow->port_control);
 p->control_map = cpu_to_be16(
  ppd->congestion_entries_shadow->control_map);
 for (i = 0; i < IB_CC_CCS_ENTRIES; i++) {
  p->entries[i].ccti_increase = entries[i].ccti_increase;
  p->entries[i].ccti_timer = cpu_to_be16(entries[i].ccti_timer);
  p->entries[i].trigger_threshold = entries[i].trigger_threshold;
  p->entries[i].ccti_min = entries[i].ccti_min;
 }

 spin_unlock(&ppd->cc_shadow_lock);

 return reply((struct ib_smp *) ccp);
}
