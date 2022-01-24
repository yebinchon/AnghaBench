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
struct tc_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP0CTL ; 
 int /*<<< orphan*/  VID_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tc_data*) ; 

__attribute__((used)) static int FUNC3(struct tc_data *tc)
{
	int ret;

	FUNC0(tc->dev, "disable video stream\n");

	ret = FUNC1(tc->regmap, DP0CTL, VID_EN, 0);
	if (ret)
		return ret;

	FUNC2(tc);

	return 0;
}