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
struct a6xx_gmu {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REG_A6XX_GMU_CM3_FW_INIT_RESULT ; 
 int /*<<< orphan*/  REG_A6XX_GMU_CM3_SYSRESET ; 
 int FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct a6xx_gmu *gmu)
{
	int ret;
	u32 val;

	FUNC2(gmu, REG_A6XX_GMU_CM3_SYSRESET, 1);
	FUNC2(gmu, REG_A6XX_GMU_CM3_SYSRESET, 0);

	ret = FUNC1(gmu, REG_A6XX_GMU_CM3_FW_INIT_RESULT, val,
		val == 0xbabeface, 100, 10000);

	if (ret)
		FUNC0(gmu->dev, "GMU firmware initialization timed out\n");

	return ret;
}