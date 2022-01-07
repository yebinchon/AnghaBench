
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct qib_pportdata {int cc_shadow_lock; TYPE_1__* ccti_entries_shadow; } ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_table_entry_shadow {int entry; } ;
struct ib_cc_table_attr {TYPE_2__* ccti_entries; void* ccti_limit; } ;
struct ib_cc_mad {int attr_mod; scalar_t__ mgmt_data; } ;
struct TYPE_4__ {void* entry; } ;
struct TYPE_3__ {int ccti_last_entry; struct ib_cc_table_entry_shadow* entries; } ;


 int IB_CCT_ENTRIES ;
 int IB_CC_TABLE_CAP_DEFAULT ;
 int be32_to_cpu (int ) ;
 void* cpu_to_be16 (int) ;
 int cpu_to_be32 (int) ;
 int memset (scalar_t__,int ,int) ;
 struct qib_pportdata* ppd_from_ibp (struct qib_ibport*) ;
 int reply (struct ib_smp*) ;
 int reply_failure (struct ib_smp*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct qib_ibport* to_iport (struct ib_device*,int ) ;

__attribute__((used)) static int cc_get_congestion_control_table(struct ib_cc_mad *ccp,
    struct ib_device *ibdev, u8 port)
{
 struct ib_cc_table_attr *p =
  (struct ib_cc_table_attr *)ccp->mgmt_data;
 struct qib_ibport *ibp = to_iport(ibdev, port);
 struct qib_pportdata *ppd = ppd_from_ibp(ibp);
 u32 cct_block_index = be32_to_cpu(ccp->attr_mod);
 u32 max_cct_block;
 u32 cct_entry;
 struct ib_cc_table_entry_shadow *entries;
 int i;


 if (cct_block_index > IB_CC_TABLE_CAP_DEFAULT - 1)
  goto bail;

 memset(ccp->mgmt_data, 0, sizeof(ccp->mgmt_data));

 spin_lock(&ppd->cc_shadow_lock);

 max_cct_block =
  (ppd->ccti_entries_shadow->ccti_last_entry + 1)/IB_CCT_ENTRIES;
 max_cct_block = max_cct_block ? max_cct_block - 1 : 0;

 if (cct_block_index > max_cct_block) {
  spin_unlock(&ppd->cc_shadow_lock);
  goto bail;
 }

 ccp->attr_mod = cpu_to_be32(cct_block_index);

 cct_entry = IB_CCT_ENTRIES * (cct_block_index + 1);

 cct_entry--;

 p->ccti_limit = cpu_to_be16(cct_entry);

 entries = &ppd->ccti_entries_shadow->
   entries[IB_CCT_ENTRIES * cct_block_index];
 cct_entry %= IB_CCT_ENTRIES;

 for (i = 0; i <= cct_entry; i++)
  p->ccti_entries[i].entry = cpu_to_be16(entries[i].entry);

 spin_unlock(&ppd->cc_shadow_lock);

 return reply((struct ib_smp *) ccp);

bail:
 return reply_failure((struct ib_smp *) ccp);
}
