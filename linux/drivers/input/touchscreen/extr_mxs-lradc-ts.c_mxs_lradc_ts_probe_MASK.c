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
typedef  int u32 ;
struct device {TYPE_1__* parent; } ;
struct platform_device {struct device dev; } ;
struct mxs_lradc_ts {int over_sample_cnt; int over_sample_delay; int settling_delay; int /*<<< orphan*/  base; struct device* dev; int /*<<< orphan*/  lock; struct mxs_lradc* lradc; } ;
struct mxs_lradc {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int LRADC_DELAY_DELAY_MASK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct mxs_lradc* FUNC3 (TYPE_1__*) ; 
 struct mxs_lradc_ts* FUNC4 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mxs_lradc_ts*) ; 
 int FUNC7 (struct device_node*,int) ; 
 int /*<<< orphan*/  mxs_lradc_ts_handle_irq ; 
 int /*<<< orphan*/  FUNC8 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/ * mxs_lradc_ts_irq_names ; 
 int FUNC9 (struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC10 (struct mxs_lradc_ts*) ; 
 int FUNC11 (struct device_node*,char*,int*) ; 
 int FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct mxs_lradc_ts*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->parent->of_node;
	struct mxs_lradc *lradc = FUNC3(dev->parent);
	struct mxs_lradc_ts *ts;
	int ret, irq, virq, i;
	u32 ts_wires = 0, adapt;

	ts = FUNC4(dev, sizeof(*ts), GFP_KERNEL);
	if (!ts)
		return -ENOMEM;

	FUNC13(pdev, ts);

	ts->lradc = lradc;
	ts->dev = dev;
	FUNC14(&ts->lock);

	ts->base = FUNC5(pdev, 0);
	if (FUNC0(ts->base))
		return FUNC1(ts->base);

	ret = FUNC11(node, "fsl,lradc-touchscreen-wires",
				   &ts_wires);
	if (ret)
		return ret;

	if (FUNC11(node, "fsl,ave-ctrl", &adapt)) {
		ts->over_sample_cnt = 4;
	} else {
		if (adapt >= 1 && adapt <= 32) {
			ts->over_sample_cnt = adapt;
		} else {
			FUNC2(ts->dev, "Invalid sample count (%u)\n",
				adapt);
			return -EINVAL;
		}
	}

	if (FUNC11(node, "fsl,ave-delay", &adapt)) {
		ts->over_sample_delay = 2;
	} else {
		if (adapt >= 2 && adapt <= LRADC_DELAY_DELAY_MASK + 1) {
			ts->over_sample_delay = adapt;
		} else {
			FUNC2(ts->dev, "Invalid sample delay (%u)\n",
				adapt);
			return -EINVAL;
		}
	}

	if (FUNC11(node, "fsl,settling", &adapt)) {
		ts->settling_delay = 10;
	} else {
		if (adapt >= 1 && adapt <= LRADC_DELAY_DELAY_MASK) {
			ts->settling_delay = adapt;
		} else {
			FUNC2(ts->dev, "Invalid settling delay (%u)\n",
				adapt);
			return -EINVAL;
		}
	}

	ret = FUNC15(ts->base);
	if (ret)
		return ret;

	FUNC8(ts);

	for (i = 0; i < 3; i++) {
		irq = FUNC12(pdev, mxs_lradc_ts_irq_names[i]);
		if (irq < 0)
			return irq;

		virq = FUNC7(node, irq);

		FUNC10(ts);

		ret = FUNC6(dev, virq,
				       mxs_lradc_ts_handle_irq,
				       0, mxs_lradc_ts_irq_names[i], ts);
		if (ret)
			return ret;
	}

	return FUNC9(ts);
}