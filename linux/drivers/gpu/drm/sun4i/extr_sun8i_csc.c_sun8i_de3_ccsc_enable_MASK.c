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
typedef  scalar_t__ u32 ;
struct regmap {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DE3_BLD_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct regmap*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct regmap *map, int layer, bool enable)
{
	u32 val, mask;

	mask = FUNC1(layer);

	if (enable)
		val = mask;
	else
		val = 0;

	FUNC2(map, FUNC0(DE3_BLD_BASE),
			   mask, val);
}