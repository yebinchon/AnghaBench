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
struct irq_data {int /*<<< orphan*/  hwirq; } ;
struct bcm_kona_gpio {int /*<<< orphan*/  gpio_chip; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct bcm_kona_gpio* FUNC1 (struct irq_data*) ; 

__attribute__((used)) static int FUNC2(struct irq_data *d)
{
	struct bcm_kona_gpio *kona_gpio = FUNC1(d);

	return FUNC0(&kona_gpio->gpio_chip, d->hwirq);
}