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
struct ak8974 {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  AK8974_ACTIVATE_DELAY ; 
 int /*<<< orphan*/  AK8974_CTRL1 ; 
 int /*<<< orphan*/  AK8974_CTRL1_FORCE_EN ; 
 int /*<<< orphan*/  AK8974_CTRL1_POWER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ak8974 *ak8974, bool mode)
{
	int ret;
	u8 val;

	val = mode ? AK8974_CTRL1_POWER : 0;
	val |= AK8974_CTRL1_FORCE_EN;
	ret = FUNC1(ak8974->map, AK8974_CTRL1, val);
	if (ret < 0)
		return ret;

	if (mode)
		FUNC0(AK8974_ACTIVATE_DELAY);

	return 0;
}