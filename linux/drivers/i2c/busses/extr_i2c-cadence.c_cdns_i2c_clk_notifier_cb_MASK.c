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
struct notifier_block {int dummy; } ;
struct clk_notifier_data {unsigned long new_rate; unsigned long old_rate; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct cdns_i2c {unsigned long i2c_clk; unsigned long input_clk; TYPE_2__ adap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  ABORT_RATE_CHANGE 130 
 int NOTIFY_DONE ; 
 int NOTIFY_OK ; 
 int NOTIFY_STOP ; 
#define  POST_RATE_CHANGE 129 
#define  PRE_RATE_CHANGE 128 
 int FUNC0 (unsigned long*,unsigned long,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,struct cdns_i2c*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct cdns_i2c* FUNC4 (struct notifier_block*) ; 

__attribute__((used)) static int FUNC5(struct notifier_block *nb, unsigned long
		event, void *data)
{
	struct clk_notifier_data *ndata = data;
	struct cdns_i2c *id = FUNC4(nb);

	if (FUNC3(id->dev))
		return NOTIFY_OK;

	switch (event) {
	case PRE_RATE_CHANGE:
	{
		unsigned long input_clk = ndata->new_rate;
		unsigned long fscl = id->i2c_clk;
		unsigned int div_a, div_b;
		int ret;

		ret = FUNC0(&fscl, input_clk, &div_a, &div_b);
		if (ret) {
			FUNC2(id->adap.dev.parent,
					"clock rate change rejected\n");
			return NOTIFY_STOP;
		}

		/* scale up */
		if (ndata->new_rate > ndata->old_rate)
			FUNC1(ndata->new_rate, id);

		return NOTIFY_OK;
	}
	case POST_RATE_CHANGE:
		id->input_clk = ndata->new_rate;
		/* scale down */
		if (ndata->new_rate < ndata->old_rate)
			FUNC1(ndata->new_rate, id);
		return NOTIFY_OK;
	case ABORT_RATE_CHANGE:
		/* scale up */
		if (ndata->new_rate > ndata->old_rate)
			FUNC1(ndata->old_rate, id);
		return NOTIFY_OK;
	default:
		return NOTIFY_DONE;
	}
}