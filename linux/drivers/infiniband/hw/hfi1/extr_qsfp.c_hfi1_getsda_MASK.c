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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct hfi1_i2c_bus {int /*<<< orphan*/  controlling_dd; int /*<<< orphan*/  num; } ;

/* Variables and functions */
 int QSFP_HFI0_I2CDAT ; 
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(void *data)
{
	struct hfi1_i2c_bus *bus = (struct hfi1_i2c_bus *)data;
	u64 reg;
	u32 target_in;

	FUNC0(data, 1);	/* clear OE so we do not pull line down */
	FUNC3(2);		/* 1us pull up + 250ns hold */

	target_in = FUNC1(bus->num);
	reg = FUNC2(bus->controlling_dd, target_in);
	return !!(reg & QSFP_HFI0_I2CDAT);
}