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
struct gpiod_data {int /*<<< orphan*/  value_kn; int /*<<< orphan*/  irq; scalar_t__ irq_flags; struct gpio_desc* desc; } ;
struct gpio_desc {TYPE_1__* gdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 struct gpiod_data* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct gpiod_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct device *dev)
{
	struct gpiod_data *data = FUNC0(dev);
	struct gpio_desc *desc = data->desc;

	data->irq_flags = 0;
	FUNC1(data->irq, data);
	FUNC3(desc->gdev->chip, FUNC2(desc));
	FUNC4(data->value_kn);
}