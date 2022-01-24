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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct adc_jack_pdata {int /*<<< orphan*/  name; int /*<<< orphan*/  irq_flags; scalar_t__ wakeup_source; int /*<<< orphan*/  handling_delay_ms; int /*<<< orphan*/  consumer_channel; TYPE_1__* adc_conditions; int /*<<< orphan*/  cable_names; } ;
struct TYPE_4__ {int /*<<< orphan*/  work; } ;
struct adc_jack_data {int num_conditions; scalar_t__ irq; TYPE_2__ handler; scalar_t__ wakeup_source; int /*<<< orphan*/  edev; int /*<<< orphan*/  handling_delay; int /*<<< orphan*/  chan; TYPE_1__* adc_conditions; int /*<<< orphan*/ * dev; } ;
struct TYPE_3__ {scalar_t__ id; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ EXTCON_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adc_jack_irq_thread ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 struct adc_jack_pdata* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct adc_jack_data* FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct platform_device*,struct adc_jack_data*) ; 
 int FUNC14 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct adc_jack_data*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct adc_jack_data *data;
	struct adc_jack_pdata *pdata = FUNC5(&pdev->dev);
	int i, err = 0;

	data = FUNC9(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	if (!pdata->cable_names) {
		FUNC4(&pdev->dev, "error: cable_names not defined.\n");
		return -EINVAL;
	}

	data->dev = &pdev->dev;
	data->edev = FUNC7(&pdev->dev, pdata->cable_names);
	if (FUNC1(data->edev)) {
		FUNC4(&pdev->dev, "failed to allocate extcon device\n");
		return -ENOMEM;
	}

	if (!pdata->adc_conditions) {
		FUNC4(&pdev->dev, "error: adc_conditions not defined.\n");
		return -EINVAL;
	}
	data->adc_conditions = pdata->adc_conditions;

	/* Check the length of array and set num_conditions */
	for (i = 0; data->adc_conditions[i].id != EXTCON_NONE; i++);
	data->num_conditions = i;

	data->chan = FUNC10(&pdev->dev, pdata->consumer_channel);
	if (FUNC1(data->chan))
		return FUNC2(data->chan);

	data->handling_delay = FUNC11(pdata->handling_delay_ms);
	data->wakeup_source = pdata->wakeup_source;

	FUNC0(&data->handler, adc_jack_handler);

	FUNC13(pdev, data);

	err = FUNC8(&pdev->dev, data->edev);
	if (err)
		return err;

	data->irq = FUNC12(pdev, 0);
	if (data->irq < 0)
		return -ENODEV;

	err = FUNC14(data->irq, adc_jack_irq_thread,
			pdata->irq_flags, pdata->name, data);

	if (err < 0) {
		FUNC4(&pdev->dev, "error: irq %d\n", data->irq);
		return err;
	}

	if (data->wakeup_source)
		FUNC6(&pdev->dev, 1);

	FUNC3(&data->handler.work);
	return 0;
}