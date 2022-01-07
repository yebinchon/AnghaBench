
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct qib_pportdata {TYPE_1__* congestion_entries; void* cc_sl_control_map; } ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_mad {scalar_t__ mgmt_data; } ;
struct ib_cc_congestion_setting_attr {TYPE_2__* entries; int control_map; } ;
struct TYPE_4__ {int ccti_min; int trigger_threshold; int ccti_timer; int ccti_increase; } ;
struct TYPE_3__ {int ccti_min; int trigger_threshold; void* ccti_timer; int ccti_increase; } ;


 int IB_CC_CCS_ENTRIES ;
 void* be16_to_cpu (int ) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int cc_set_congestion_setting(struct ib_cc_mad *ccp,
    struct ib_device *ibdev, u8 port)
{
 struct ib_cc_congestion_setting_attr *p =
  (struct ib_cc_congestion_setting_attr *)ccp->mgmt_data;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 int i;

 ppd->cc_sl_control_map = be16_to_cpu(p->control_map);

 for (i = 0; i < IB_CC_CCS_ENTRIES; i++) {
  ppd->congestion_entries[i].ccti_increase =
   p->entries[i].ccti_increase;

  ppd->congestion_entries[i].ccti_timer =
   be16_to_cpu(p->entries[i].ccti_timer);

  ppd->congestion_entries[i].trigger_threshold =
   p->entries[i].trigger_threshold;

  ppd->congestion_entries[i].ccti_min =
   p->entries[i].ccti_min;
 }

 return reply((struct ib_smp *) ccp);
}
