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
struct intel_uncore {int dummy; } ;
struct intel_gmbus {int /*<<< orphan*/  gpio_reg; TYPE_1__* dev_priv; } ;
struct TYPE_2__ {struct intel_uncore uncore; } ;

/* Variables and functions */
 int GPIO_CLOCK_DIR_MASK ; 
 int GPIO_CLOCK_VAL_IN ; 
 int FUNC0 (struct intel_gmbus*) ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(void *data)
{
	struct intel_gmbus *bus = data;
	struct intel_uncore *uncore = &bus->dev_priv->uncore;
	u32 reserved = FUNC0(bus);

	FUNC2(uncore,
				   bus->gpio_reg,
				   reserved | GPIO_CLOCK_DIR_MASK);
	FUNC2(uncore, bus->gpio_reg, reserved);

	return (FUNC1(uncore, bus->gpio_reg) &
		GPIO_CLOCK_VAL_IN) != 0;
}