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
typedef  int u32 ;
struct msm_gpu {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR ; 
 int A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS ; 
 int A6XX_RBBM_INT_0_MASK_CP_HW_ERROR ; 
 int A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW ; 
 int A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW ; 
 int A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT ; 
 int A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_INT_0_STATUS ; 
 int /*<<< orphan*/  REG_A6XX_RBBM_INT_CLEAR_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_gpu*) ; 

__attribute__((used)) static irqreturn_t FUNC6(struct msm_gpu *gpu)
{
	u32 status = FUNC3(gpu, REG_A6XX_RBBM_INT_0_STATUS);

	FUNC4(gpu, REG_A6XX_RBBM_INT_CLEAR_CMD, status);

	if (status & A6XX_RBBM_INT_0_MASK_RBBM_HANG_DETECT)
		FUNC1(gpu);

	if (status & A6XX_RBBM_INT_0_MASK_CP_AHB_ERROR)
		FUNC2(&gpu->pdev->dev, "CP | AHB bus error\n");

	if (status & A6XX_RBBM_INT_0_MASK_CP_HW_ERROR)
		FUNC0(gpu);

	if (status & A6XX_RBBM_INT_0_MASK_RBBM_ATB_ASYNCFIFO_OVERFLOW)
		FUNC2(&gpu->pdev->dev, "RBBM | ATB ASYNC overflow\n");

	if (status & A6XX_RBBM_INT_0_MASK_RBBM_ATB_BUS_OVERFLOW)
		FUNC2(&gpu->pdev->dev, "RBBM | ATB bus overflow\n");

	if (status & A6XX_RBBM_INT_0_MASK_UCHE_OOB_ACCESS)
		FUNC2(&gpu->pdev->dev, "UCHE | Out of bounds access\n");

	if (status & A6XX_RBBM_INT_0_MASK_CP_CACHE_FLUSH_TS)
		FUNC5(gpu);

	return IRQ_HANDLED;
}