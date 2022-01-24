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
 int GPIO_DATA_DIR_IN ; 
 int GPIO_DATA_DIR_MASK ; 
 int GPIO_DATA_DIR_OUT ; 
 int GPIO_DATA_VAL_MASK ; 
 int FUNC0 (struct intel_gmbus*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(void *data, int state_high)
{
	struct intel_gmbus *bus = data;
	struct intel_uncore *uncore = &bus->dev_priv->uncore;
	u32 reserved = FUNC0(bus);
	u32 data_bits;

	if (state_high)
		data_bits = GPIO_DATA_DIR_IN | GPIO_DATA_DIR_MASK;
	else
		data_bits = GPIO_DATA_DIR_OUT | GPIO_DATA_DIR_MASK |
			GPIO_DATA_VAL_MASK;

	FUNC2(uncore, bus->gpio_reg, reserved | data_bits);
	FUNC1(uncore, bus->gpio_reg);
}