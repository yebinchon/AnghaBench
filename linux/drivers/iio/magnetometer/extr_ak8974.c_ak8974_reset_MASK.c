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
struct ak8974 {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_CTRL2 ; 
 int /*<<< orphan*/  AK8974_CTRL2_RESDEF ; 
 int /*<<< orphan*/  AK8974_CTRL3 ; 
 int /*<<< orphan*/  AK8974_CTRL3_RESDEF ; 
 int /*<<< orphan*/  AK8974_INT_CTRL ; 
 int /*<<< orphan*/  AK8974_INT_CTRL_RESDEF ; 
 int /*<<< orphan*/  AK8974_PWR_OFF ; 
 int /*<<< orphan*/  AK8974_PWR_ON ; 
 int FUNC0 (struct ak8974*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ak8974 *ak8974)
{
	int ret;

	/* Power on to get register access. Sets CTRL1 reg to reset state */
	ret = FUNC0(ak8974, AK8974_PWR_ON);
	if (ret)
		return ret;
	ret = FUNC1(ak8974->map, AK8974_CTRL2, AK8974_CTRL2_RESDEF);
	if (ret)
		return ret;
	ret = FUNC1(ak8974->map, AK8974_CTRL3, AK8974_CTRL3_RESDEF);
	if (ret)
		return ret;
	ret = FUNC1(ak8974->map, AK8974_INT_CTRL,
			   AK8974_INT_CTRL_RESDEF);
	if (ret)
		return ret;

	/* After reset, power off is default state */
	return FUNC0(ak8974, AK8974_PWR_OFF);
}