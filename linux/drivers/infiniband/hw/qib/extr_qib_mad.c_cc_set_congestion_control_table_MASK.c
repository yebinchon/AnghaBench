#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct qib_pportdata {int total_cct_entry; int cc_supported_table_entries; int ccti_limit; int /*<<< orphan*/  cc_shadow_lock; struct ib_cc_table_entry_shadow* congestion_entries; TYPE_3__* congestion_entries_shadow; int /*<<< orphan*/  cc_sl_control_map; struct ib_cc_table_entry_shadow* ccti_entries; TYPE_2__* ccti_entries_shadow; } ;
struct qib_ibport {int dummy; } ;
struct ib_smp {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_table_entry_shadow {int entry; } ;
struct ib_cc_table_entry {int dummy; } ;
struct ib_cc_table_attr {TYPE_1__* ccti_entries; int /*<<< orphan*/  ccti_limit; } ;
struct ib_cc_mad {int /*<<< orphan*/  attr_mod; scalar_t__ mgmt_data; } ;
struct ib_cc_congestion_entry {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  entries; int /*<<< orphan*/  control_map; int /*<<< orphan*/  port_control; } ;
struct TYPE_5__ {int ccti_last_entry; int /*<<< orphan*/  entries; } ;
struct TYPE_4__ {int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int IB_CCT_ENTRIES ; 
 int IB_CC_CCS_ENTRIES ; 
 int /*<<< orphan*/  IB_CC_CCS_PC_SL_BASED ; 
 int IB_CC_TABLE_CAP_DEFAULT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ib_cc_table_entry_shadow*,int) ; 
 struct qib_pportdata* FUNC3 (struct qib_ibport*) ; 
 int FUNC4 (struct ib_smp*) ; 
 int FUNC5 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct qib_ibport* FUNC8 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct ib_cc_mad *ccp,
				struct ib_device *ibdev, u8 port)
{
	struct ib_cc_table_attr *p =
		(struct ib_cc_table_attr *)ccp->mgmt_data;
	struct qib_ibport *ibp = FUNC8(ibdev, port);
	struct qib_pportdata *ppd = FUNC3(ibp);
	u32 cct_block_index = FUNC1(ccp->attr_mod);
	u32 cct_entry;
	struct ib_cc_table_entry_shadow *entries;
	int i;

	/* Is the table index more than what is supported? */
	if (cct_block_index > IB_CC_TABLE_CAP_DEFAULT - 1)
		goto bail;

	/* If this packet is the first in the sequence then
	 * zero the total table entry count.
	 */
	if (FUNC0(p->ccti_limit) < IB_CCT_ENTRIES)
		ppd->total_cct_entry = 0;

	cct_entry = (FUNC0(p->ccti_limit))%IB_CCT_ENTRIES;

	/* ccti_limit is 0 to 63 */
	ppd->total_cct_entry += (cct_entry + 1);

	if (ppd->total_cct_entry > ppd->cc_supported_table_entries)
		goto bail;

	ppd->ccti_limit = FUNC0(p->ccti_limit);

	entries = ppd->ccti_entries + (IB_CCT_ENTRIES * cct_block_index);

	for (i = 0; i <= cct_entry; i++)
		entries[i].entry = FUNC0(p->ccti_entries[i].entry);

	FUNC6(&ppd->cc_shadow_lock);

	ppd->ccti_entries_shadow->ccti_last_entry = ppd->total_cct_entry - 1;
	FUNC2(ppd->ccti_entries_shadow->entries, ppd->ccti_entries,
		(ppd->total_cct_entry * sizeof(struct ib_cc_table_entry)));

	ppd->congestion_entries_shadow->port_control = IB_CC_CCS_PC_SL_BASED;
	ppd->congestion_entries_shadow->control_map = ppd->cc_sl_control_map;
	FUNC2(ppd->congestion_entries_shadow->entries, ppd->congestion_entries,
		IB_CC_CCS_ENTRIES * sizeof(struct ib_cc_congestion_entry));

	FUNC7(&ppd->cc_shadow_lock);

	return FUNC4((struct ib_smp *) ccp);

bail:
	return FUNC5((struct ib_smp *) ccp);
}