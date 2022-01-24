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
struct rmi_data {scalar_t__ rmi_irq; int /*<<< orphan*/  domain; } ;
struct TYPE_2__ {int /*<<< orphan*/  fwnode; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,struct rmi_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,char*) ; 
 struct rmi_data* FUNC2 (struct hid_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,struct rmi_data*) ; 
 int /*<<< orphan*/  rmi_irq_ops ; 
 int /*<<< orphan*/  rmi_irq_teardown ; 

__attribute__((used)) static int FUNC5(struct hid_device *hdev)
{
	struct rmi_data *hdata = FUNC2(hdev);
	int ret;

	hdata->domain = FUNC4(hdev->dev.fwnode, 1,
						 &rmi_irq_ops, hdata);
	if (!hdata->domain)
		return -ENOMEM;

	ret = FUNC0(&hdev->dev, &rmi_irq_teardown, hdata);
	if (ret)
		return ret;

	hdata->rmi_irq = FUNC3(hdata->domain, 0);
	if (hdata->rmi_irq <= 0) {
		FUNC1(hdev, "Can't allocate an IRQ\n");
		return hdata->rmi_irq < 0 ? hdata->rmi_irq : -ENXIO;
	}

	return 0;
}