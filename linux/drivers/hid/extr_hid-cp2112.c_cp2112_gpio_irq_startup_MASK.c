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
struct irq_data {int dummy; } ;
struct gpio_chip {int dummy; } ;
struct cp2112_device {int gpio_poll; int /*<<< orphan*/  gpio_poll_worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct irq_data*) ; 
 int /*<<< orphan*/  cp2112_gpio_poll_callback ; 
 struct cp2112_device* FUNC2 (struct gpio_chip*) ; 
 struct gpio_chip* FUNC3 (struct irq_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC5(struct irq_data *d)
{
	struct gpio_chip *gc = FUNC3(d);
	struct cp2112_device *dev = FUNC2(gc);

	FUNC0(&dev->gpio_poll_worker, cp2112_gpio_poll_callback);

	if (!dev->gpio_poll) {
		dev->gpio_poll = true;
		FUNC4(&dev->gpio_poll_worker, 0);
	}

	FUNC1(d);
	return 0;
}