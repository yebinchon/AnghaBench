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
typedef  int /*<<< orphan*/  u8 ;
struct nvbios_init {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct nvbios_init*) ; 
 struct i2c_adapter* FUNC1 (struct nvbios_init*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nvbios_init *init, u8 index, u8 addr, u8 reg)
{
	struct i2c_adapter *adap = FUNC1(init, index);
	if (adap && FUNC0(init))
		return FUNC2(adap, addr, reg);
	return -ENODEV;
}