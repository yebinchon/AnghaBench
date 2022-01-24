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
typedef  scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ addr; scalar_t__ val; } ;
struct lp55xx_device_config {TYPE_1__ enable; } ;
struct lp55xx_chip {struct lp55xx_device_config* cfg; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (struct lp55xx_chip*,scalar_t__,scalar_t__*) ; 
 int FUNC1 (struct lp55xx_chip*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct lp55xx_chip *chip)
{
	struct lp55xx_device_config *cfg = chip->cfg;
	u8 addr = cfg->enable.addr;
	u8 val  = cfg->enable.val;
	int ret;

	ret = FUNC1(chip, addr, val);
	if (ret)
		return ret;

	FUNC2(1000, 2000);

	ret = FUNC0(chip, addr, &val);
	if (ret)
		return ret;

	if (val != cfg->enable.val)
		return -ENODEV;

	return 0;
}