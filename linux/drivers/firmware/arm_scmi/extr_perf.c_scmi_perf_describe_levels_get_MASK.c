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
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_5__ {struct scmi_msg_resp_perf_describe_levels* buf; } ;
struct TYPE_4__ {struct scmi_msg_perf_describe_levels* buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_opp {scalar_t__ trans_latency_us; void* power; void* perf; } ;
struct scmi_msg_resp_perf_describe_levels {TYPE_3__* opp; int /*<<< orphan*/  num_remaining; int /*<<< orphan*/  num_returned; } ;
struct scmi_msg_perf_describe_levels {void* level_index; void* domain; } ;
struct scmi_handle {int /*<<< orphan*/  dev; } ;
struct perf_dom_info {struct scmi_opp* opp; scalar_t__ opp_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  transition_latency_us; int /*<<< orphan*/  power; int /*<<< orphan*/  perf_val; } ;

/* Variables and functions */
 scalar_t__ MAX_OPPS ; 
 int /*<<< orphan*/  PERF_DESCRIBE_LEVELS ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_PERF ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opp_cmp_func ; 
 int FUNC5 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC6 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC7 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int /*<<< orphan*/  FUNC8 (struct scmi_opp*,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(const struct scmi_handle *handle, u32 domain,
			      struct perf_dom_info *perf_dom)
{
	int ret, cnt;
	u32 tot_opp_cnt = 0;
	u16 num_returned, num_remaining;
	struct scmi_xfer *t;
	struct scmi_opp *opp;
	struct scmi_msg_perf_describe_levels *dom_info;
	struct scmi_msg_resp_perf_describe_levels *level_info;

	ret = FUNC6(handle, PERF_DESCRIBE_LEVELS,
				 SCMI_PROTOCOL_PERF, sizeof(*dom_info), 0, &t);
	if (ret)
		return ret;

	dom_info = t->tx.buf;
	level_info = t->rx.buf;

	do {
		dom_info->domain = FUNC0(domain);
		/* Set the number of OPPs to be skipped/already read */
		dom_info->level_index = FUNC0(tot_opp_cnt);

		ret = FUNC5(handle, t);
		if (ret)
			break;

		num_returned = FUNC3(level_info->num_returned);
		num_remaining = FUNC3(level_info->num_remaining);
		if (tot_opp_cnt + num_returned > MAX_OPPS) {
			FUNC2(handle->dev, "No. of OPPs exceeded MAX_OPPS");
			break;
		}

		opp = &perf_dom->opp[tot_opp_cnt];
		for (cnt = 0; cnt < num_returned; cnt++, opp++) {
			opp->perf = FUNC4(level_info->opp[cnt].perf_val);
			opp->power = FUNC4(level_info->opp[cnt].power);
			opp->trans_latency_us = FUNC3
				(level_info->opp[cnt].transition_latency_us);

			FUNC1(handle->dev, "Level %d Power %d Latency %dus\n",
				opp->perf, opp->power, opp->trans_latency_us);
		}

		tot_opp_cnt += num_returned;
		/*
		 * check for both returned and remaining to avoid infinite
		 * loop due to buggy firmware
		 */
	} while (num_returned && num_remaining);

	perf_dom->opp_count = tot_opp_cnt;
	FUNC7(handle, t);

	FUNC8(perf_dom->opp, tot_opp_cnt, sizeof(*opp), opp_cmp_func, NULL);
	return ret;
}