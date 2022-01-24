#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ad5064_state {int use_internal_vref; TYPE_2__* vref_reg; TYPE_1__* chip_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  consumer; int /*<<< orphan*/  supply; } ;
struct TYPE_3__ {int /*<<< orphan*/  internal_vref; } ;

/* Variables and functions */
 int /*<<< orphan*/  AD5064_CONFIG_INT_VREF_ENABLE ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct ad5064_state*) ; 
 int FUNC3 (struct ad5064_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ad5064_state*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 int FUNC6 (struct device*,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,char*) ; 

__attribute__((used)) static int FUNC8(struct ad5064_state *st, struct device *dev)
{
	unsigned int i;
	int ret;

	for (i = 0; i < FUNC2(st); ++i)
		st->vref_reg[i].supply = FUNC4(st, i);

	if (!st->chip_info->internal_vref)
		return FUNC6(dev, FUNC2(st),
					       st->vref_reg);

	/*
	 * This assumes that when the regulator has an internal VREF
	 * there is only one external VREF connection, which is
	 * currently the case for all supported devices.
	 */
	st->vref_reg[0].consumer = FUNC7(dev, "vref");
	if (!FUNC0(st->vref_reg[0].consumer))
		return 0;

	ret = FUNC1(st->vref_reg[0].consumer);
	if (ret != -ENODEV)
		return ret;

	/* If no external regulator was supplied use the internal VREF */
	st->use_internal_vref = true;
	ret = FUNC3(st, AD5064_CONFIG_INT_VREF_ENABLE);
	if (ret)
		FUNC5(dev, "Failed to enable internal vref: %d\n", ret);

	return ret;
}