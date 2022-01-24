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
struct msm_mmu {int /*<<< orphan*/  dev; } ;
struct msm_gpummu {int /*<<< orphan*/  pt_base; int /*<<< orphan*/  table; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ATTR_FORCE_CONTIGUOUS ; 
 int /*<<< orphan*/  TABLE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpummu*) ; 
 struct msm_gpummu* FUNC2 (struct msm_mmu*) ; 

__attribute__((used)) static void FUNC3(struct msm_mmu *mmu)
{
	struct msm_gpummu *gpummu = FUNC2(mmu);

	FUNC0(mmu->dev, TABLE_SIZE, gpummu->table, gpummu->pt_base,
		DMA_ATTR_FORCE_CONTIGUOUS);

	FUNC1(gpummu);
}