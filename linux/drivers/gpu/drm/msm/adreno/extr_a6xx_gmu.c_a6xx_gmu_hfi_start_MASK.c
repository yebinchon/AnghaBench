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
 int /*<<< orphan*/  REG_A6XX_GMU_HFI_CTRL_INIT ; 
 int /*<<< orphan*/  REG_A6XX_GMU_HFI_CTRL_STATUS ; 
 int FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct a6xx_gmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct a6xx_gmu *gmu)
{
	u32 val;
	int ret;

	FUNC2(gmu, REG_A6XX_GMU_HFI_CTRL_INIT, 1);

	ret = FUNC1(gmu, REG_A6XX_GMU_HFI_CTRL_STATUS, val,
		val & 1, 100, 10000);
	if (ret)
		FUNC0(gmu->dev, "Unable to start the HFI queues\n");

	return ret;
}