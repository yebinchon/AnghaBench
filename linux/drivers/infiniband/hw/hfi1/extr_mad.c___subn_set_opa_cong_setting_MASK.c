#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct opa_smp {int /*<<< orphan*/  status; } ;
struct opa_congestion_setting_entry_shadow {int /*<<< orphan*/  ccti_min; int /*<<< orphan*/  trigger_threshold; int /*<<< orphan*/  ccti_timer; int /*<<< orphan*/  ccti_increase; } ;
struct opa_congestion_setting_attr {TYPE_1__* entries; int /*<<< orphan*/  control_map; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int /*<<< orphan*/  cc_state_lock; struct opa_congestion_setting_entry_shadow* congestion_entries; int /*<<< orphan*/  cc_sl_control_map; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ccti_min; int /*<<< orphan*/  trigger_threshold; int /*<<< orphan*/  ccti_timer; int /*<<< orphan*/  ccti_increase; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int OPA_MAX_SLS ; 
 int FUNC0 (struct opa_smp*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hfi1_pportdata*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct hfi1_pportdata* FUNC4 (struct hfi1_ibport*) ; 
 int FUNC5 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct hfi1_ibport* FUNC9 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct opa_smp *smp, u32 am, u8 *data,
				       struct ib_device *ibdev, u8 port,
				       u32 *resp_len, u32 max_len)
{
	struct opa_congestion_setting_attr *p =
		(struct opa_congestion_setting_attr *)data;
	struct hfi1_ibport *ibp = FUNC9(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC4(ibp);
	struct opa_congestion_setting_entry_shadow *entries;
	int i;

	if (FUNC6(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC5((struct ib_mad_hdr *)smp);
	}

	/*
	 * Save details from packet into the ppd.  Hold the cc_state_lock so
	 * our information is consistent with anyone trying to apply the state.
	 */
	FUNC7(&ppd->cc_state_lock);
	ppd->cc_sl_control_map = FUNC3(p->control_map);

	entries = ppd->congestion_entries;
	for (i = 0; i < OPA_MAX_SLS; i++) {
		entries[i].ccti_increase = p->entries[i].ccti_increase;
		entries[i].ccti_timer = FUNC2(p->entries[i].ccti_timer);
		entries[i].trigger_threshold =
			p->entries[i].trigger_threshold;
		entries[i].ccti_min = p->entries[i].ccti_min;
	}
	FUNC8(&ppd->cc_state_lock);

	/* now apply the information */
	FUNC1(ppd);

	return FUNC0(smp, am, data, ibdev, port,
					   resp_len, max_len);
}