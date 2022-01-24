#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
typedef  scalar_t__ u32 ;
typedef  scalar_t__ u16 ;
struct TYPE_6__ {struct scmi_msg_resp_clock_describe_rates* buf; } ;
struct TYPE_5__ {struct scmi_msg_clock_describe_rates* buf; } ;
struct scmi_xfer {TYPE_2__ rx; TYPE_1__ tx; } ;
struct scmi_msg_resp_clock_describe_rates {int /*<<< orphan*/ * rate; int /*<<< orphan*/  num_rates_flags; } ;
struct scmi_msg_clock_describe_rates {void* rate_index; void* id; } ;
struct scmi_handle {int /*<<< orphan*/  dev; } ;
struct TYPE_8__ {scalar_t__ num_rates; void** rates; } ;
struct TYPE_7__ {void* step_size; void* max_rate; void* min_rate; } ;
struct scmi_clock_info {int rate_discrete; TYPE_4__ list; TYPE_3__ range; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_DESCRIBE_RATES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCMI_MAX_NUM_RATES ; 
 int /*<<< orphan*/  SCMI_PROTOCOL_CLOCK ; 
 void* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct scmi_handle const*,struct scmi_xfer*) ; 
 int FUNC9 (struct scmi_handle const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct scmi_xfer**) ; 
 int /*<<< orphan*/  FUNC10 (struct scmi_handle const*,struct scmi_xfer*) ; 

__attribute__((used)) static int
FUNC11(const struct scmi_handle *handle, u32 clk_id,
			      struct scmi_clock_info *clk)
{
	u64 *rate;
	int ret, cnt;
	bool rate_discrete = false;
	u32 tot_rate_cnt = 0, rates_flag;
	u16 num_returned, num_remaining;
	struct scmi_xfer *t;
	struct scmi_msg_clock_describe_rates *clk_desc;
	struct scmi_msg_resp_clock_describe_rates *rlist;

	ret = FUNC9(handle, CLOCK_DESCRIBE_RATES,
				 SCMI_PROTOCOL_CLOCK, sizeof(*clk_desc), 0, &t);
	if (ret)
		return ret;

	clk_desc = t->tx.buf;
	rlist = t->rx.buf;

	do {
		clk_desc->id = FUNC4(clk_id);
		/* Set the number of rates to be skipped/already read */
		clk_desc->rate_index = FUNC4(tot_rate_cnt);

		ret = FUNC8(handle, t);
		if (ret)
			goto err;

		rates_flag = FUNC7(rlist->num_rates_flags);
		num_remaining = FUNC0(rates_flag);
		rate_discrete = FUNC2(rates_flag);
		num_returned = FUNC1(rates_flag);

		if (tot_rate_cnt + num_returned > SCMI_MAX_NUM_RATES) {
			FUNC6(handle->dev, "No. of rates > MAX_NUM_RATES");
			break;
		}

		if (!rate_discrete) {
			clk->range.min_rate = FUNC3(rlist->rate[0]);
			clk->range.max_rate = FUNC3(rlist->rate[1]);
			clk->range.step_size = FUNC3(rlist->rate[2]);
			FUNC5(handle->dev, "Min %llu Max %llu Step %llu Hz\n",
				clk->range.min_rate, clk->range.max_rate,
				clk->range.step_size);
			break;
		}

		rate = &clk->list.rates[tot_rate_cnt];
		for (cnt = 0; cnt < num_returned; cnt++, rate++) {
			*rate = FUNC3(rlist->rate[cnt]);
			FUNC5(handle->dev, "Rate %llu Hz\n", *rate);
		}

		tot_rate_cnt += num_returned;
		/*
		 * check for both returned and remaining to avoid infinite
		 * loop due to buggy firmware
		 */
	} while (num_returned && num_remaining);

	if (rate_discrete)
		clk->list.num_rates = tot_rate_cnt;

	clk->rate_discrete = rate_discrete;

err:
	FUNC10(handle, t);
	return ret;
}