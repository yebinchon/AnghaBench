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
typedef  int /*<<< orphan*/  u32 ;
struct i2c_diolan_u2c {TYPE_1__* interface; scalar_t__ ibuffer; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_GET_SERIAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_diolan_u2c*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct i2c_diolan_u2c *dev)
{
	int ret;
	u32 serial;

	ret = FUNC1(dev, CMD_GET_SERIAL, true);
	if (ret >= 4) {
		serial = FUNC2(*(u32 *)dev->ibuffer);
		FUNC0(&dev->interface->dev,
			 "Diolan U2C serial number %u\n", serial);
	}
}