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
struct gpio_bank {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  omap_mpuio_device ; 
 int /*<<< orphan*/  omap_mpuio_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct gpio_bank*) ; 

__attribute__((used)) static inline void FUNC3(struct gpio_bank *bank)
{
	FUNC2(&omap_mpuio_device, bank);

	if (FUNC1(&omap_mpuio_driver) == 0)
		(void) FUNC0(&omap_mpuio_device);
}