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
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU2HOST_INTR_CLR ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU2HOST_INTR_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct a6xx_gmu*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct a6xx_gmu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct a6xx_gmu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *data)
{
	struct a6xx_gmu *gmu = data;
	u32 status;

	status = FUNC2(gmu, REG_A6XX_GMU_GMU2HOST_INTR_INFO);
	FUNC3(gmu, REG_A6XX_GMU_GMU2HOST_INTR_CLR, status);

	if (status & A6XX_GMU_GMU2HOST_INTR_INFO_CM3_FAULT) {
		FUNC1(gmu->dev, "GMU firmware fault\n");

		FUNC0(gmu);
	}

	return IRQ_HANDLED;
}