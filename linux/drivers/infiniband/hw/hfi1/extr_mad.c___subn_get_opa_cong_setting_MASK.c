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
struct opa_smp {int /*<<< orphan*/  status; } ;
struct opa_congestion_setting_entry_shadow {int /*<<< orphan*/  ccti_min; int /*<<< orphan*/  trigger_threshold; int /*<<< orphan*/  ccti_timer; int /*<<< orphan*/  ccti_increase; } ;
struct opa_congestion_setting_attr {TYPE_2__* entries; int /*<<< orphan*/  control_map; void* port_control; } ;
struct ib_mad_hdr {int dummy; } ;
struct ib_device {int dummy; } ;
struct hfi1_pportdata {int dummy; } ;
struct hfi1_ibport {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  control_map; int /*<<< orphan*/  port_control; struct opa_congestion_setting_entry_shadow* entries; } ;
struct cc_state {TYPE_1__ cong_setting; } ;
struct TYPE_4__ {int /*<<< orphan*/  ccti_min; int /*<<< orphan*/  trigger_threshold; void* ccti_timer; int /*<<< orphan*/  ccti_increase; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_SMP_INVALID_FIELD ; 
 int OPA_MAX_SLS ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cc_state* FUNC2 (struct hfi1_pportdata*) ; 
 struct hfi1_pportdata* FUNC3 (struct hfi1_ibport*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (struct ib_mad_hdr*) ; 
 scalar_t__ FUNC7 (int,int) ; 
 struct hfi1_ibport* FUNC8 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct opa_smp *smp, u32 am,
				       u8 *data, struct ib_device *ibdev,
				       u8 port, u32 *resp_len, u32 max_len)
{
	int i;
	struct opa_congestion_setting_attr *p =
		(struct opa_congestion_setting_attr *)data;
	struct hfi1_ibport *ibp = FUNC8(ibdev, port);
	struct hfi1_pportdata *ppd = FUNC3(ibp);
	struct opa_congestion_setting_entry_shadow *entries;
	struct cc_state *cc_state;

	if (FUNC7(sizeof(*p), max_len)) {
		smp->status |= IB_SMP_INVALID_FIELD;
		return FUNC6((struct ib_mad_hdr *)smp);
	}

	FUNC4();

	cc_state = FUNC2(ppd);

	if (!cc_state) {
		FUNC5();
		return FUNC6((struct ib_mad_hdr *)smp);
	}

	entries = cc_state->cong_setting.entries;
	p->port_control = FUNC0(cc_state->cong_setting.port_control);
	p->control_map = FUNC1(cc_state->cong_setting.control_map);
	for (i = 0; i < OPA_MAX_SLS; i++) {
		p->entries[i].ccti_increase = entries[i].ccti_increase;
		p->entries[i].ccti_timer = FUNC0(entries[i].ccti_timer);
		p->entries[i].trigger_threshold =
			entries[i].trigger_threshold;
		p->entries[i].ccti_min = entries[i].ccti_min;
	}

	FUNC5();

	if (resp_len)
		*resp_len += sizeof(*p);

	return FUNC6((struct ib_mad_hdr *)smp);
}