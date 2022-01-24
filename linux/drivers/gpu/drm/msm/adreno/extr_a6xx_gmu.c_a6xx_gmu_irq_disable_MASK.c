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
struct a6xx_gmu {int /*<<< orphan*/  hfi_irq; int /*<<< orphan*/  gmu_irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK ; 
 int /*<<< orphan*/  REG_A6XX_GMU_GMU2HOST_INTR_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a6xx_gmu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct a6xx_gmu *gmu)
{
	FUNC0(gmu->gmu_irq);
	FUNC0(gmu->hfi_irq);

	FUNC1(gmu, REG_A6XX_GMU_AO_HOST_INTERRUPT_MASK, ~0);
	FUNC1(gmu, REG_A6XX_GMU_GMU2HOST_INTR_MASK, ~0);
}