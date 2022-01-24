#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct ib_cc_table_entry_shadow {int /*<<< orphan*/  entry; } ;
struct ib_cc_table_attr {TYPE_2__* ccti_entries; void* ccti_limit; } ;
struct hfi1_pportdata {int cc_max_table_entries; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_3__ {struct ib_cc_table_entry_shadow* entries; int /*<<< orphan*/  ccti_limit; } ;
struct cc_state {TYPE_1__ cct; } ;
struct TYPE_4__ {void* entry; } ;

/* Variables and functions */
 int IB_CCT_ENTRIES ; 
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct cc_state* FUNC3 (struct hfi1_pportdata*) ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC8 (int,int) ; 
 struct hfi1_ibport* FUNC9 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct opa_smp *smp, u32 am, u8 *data,
				   struct ib_device *ibdev, u8 port,
				   u32 *resp_len, u32 max_len)
{
	struct ib_cc_table_attr *cc_table_attr =
		(struct ib_cc_table_attr *)data;
	struct hfi1_ibport *ibp = FUNC9(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC4(ibp);
	u32 start_block = FUNC1(am);
	u32 n_blocks = FUNC0(am);
	struct ib_cc_table_entry_shadow *entries;
	int i, j;
	u32 sentry, eentry;
	struct cc_state *cc_state;
	u32 size = sizeof(u16) * (IB_CCT_ENTRIES * n_blocks + 1);

	/* sanity check n_blocks, start_block */
	if (n_blocks == 0 || FUNC8(size, max_len) ||
	    start_block + n_blocks > ppd->cc_max_table_entries) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC7((struct ib_mad_hdr *)smp);
	}

	FUNC5();

	cc_state = FUNC3(ppd);

	if (!cc_state) {
		FUNC6();
		return FUNC7((struct ib_mad_hdr *)smp);
	}

	sentry = start_block * IB_CCT_ENTRIES;
	eentry = sentry + (IB_CCT_ENTRIES * n_blocks);

	cc_table_attr->ccti_limit = FUNC2(cc_state->cct.ccti_limit);

	entries = cc_state->cct.entries;

	/* return n_blocks, though the last block may not be full */
	for (j = 0, i = sentry; i < eentry; j++, i++)
		cc_table_attr->ccti_entries[j].entry =
			FUNC2(entries[i].entry);

	FUNC6();

	if (resp_len)
		*resp_len += size;

	return FUNC7((struct ib_mad_hdr *)smp);
}