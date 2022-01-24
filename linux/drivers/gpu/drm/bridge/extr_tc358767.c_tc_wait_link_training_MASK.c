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
typedef  int u32 ;
struct tc_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP0_LTSTAT ; 
 int /*<<< orphan*/  LT_LOOPDONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (struct tc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(struct tc_data *tc)
{
	u32 value;
	int ret;

	ret = FUNC2(tc, DP0_LTSTAT, LT_LOOPDONE,
			      LT_LOOPDONE, 1, 1000);
	if (ret) {
		FUNC0(tc->dev, "Link training timeout waiting for LT_LOOPDONE!\n");
		return ret;
	}

	ret = FUNC1(tc->regmap, DP0_LTSTAT, &value);
	if (ret)
		return ret;

	return (value >> 8) & 0x7;
}