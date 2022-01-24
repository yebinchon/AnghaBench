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
struct ak8974 {TYPE_1__* i2c; int /*<<< orphan*/  map; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static void FUNC4(struct ak8974 *ak8974, unsigned int reg,
				   __le16 *tab, size_t tab_size)
{
	int ret = FUNC3(ak8974->map, reg, tab, tab_size);
	if (ret) {
		FUNC2(tab, 0xFF, tab_size);
		FUNC1(&ak8974->i2c->dev,
			 "can't read calibration data (regs %u..%zu): %d\n",
			 reg, reg + tab_size - 1, ret);
	} else {
		FUNC0(tab, tab_size);
	}
}