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
struct a6xx_gmu {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct a6xx_gmu*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct a6xx_gmu*) ; 
 int FUNC2 (struct a6xx_gmu*,int) ; 
 int FUNC3 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC4 (struct a6xx_gmu*) ; 

int FUNC5(struct a6xx_gmu *gmu, int boot_state)
{
	int ret;

	ret = FUNC2(gmu, boot_state);
	if (ret)
		return ret;

	ret = FUNC0(gmu, NULL);
	if (ret)
		return ret;

	/*
	 * We have to get exchange version numbers per the sequence but at this
	 * point th kernel driver doesn't need to know the exact version of
	 * the GMU firmware
	 */

	ret = FUNC3(gmu);
	if (ret)
		return ret;

	ret = FUNC1(gmu);
	if (ret)
		return ret;

	/*
	 * Let the GMU know that there won't be any more HFI messages until next
	 * boot
	 */
	FUNC4(gmu);

	return 0;
}