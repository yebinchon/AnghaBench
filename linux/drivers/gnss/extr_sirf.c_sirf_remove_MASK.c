#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sirf_data {int /*<<< orphan*/  gdev; int /*<<< orphan*/  vcc; scalar_t__ on_off; int /*<<< orphan*/  irq; scalar_t__ wakeup; } ;
struct serdev_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct sirf_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct sirf_data* FUNC6 (struct serdev_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct serdev_device *serdev)
{
	struct sirf_data *data = FUNC6(serdev);

	FUNC2(data->gdev);

	if (FUNC0(CONFIG_PM))
		FUNC4(&serdev->dev);
	else
		FUNC7(&serdev->dev);

	if (data->wakeup)
		FUNC1(data->irq, data);

	if (data->on_off)
		FUNC5(data->vcc);

	FUNC3(data->gdev);
}