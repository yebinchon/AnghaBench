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
typedef  int /*<<< orphan*/  uint64_t ;
struct msm_gpu {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A5XX_UCHE_TRAP_LOG_HI ; 
 int /*<<< orphan*/  REG_A5XX_UCHE_TRAP_LOG_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct msm_gpu *gpu)
{
	uint64_t addr = (uint64_t) FUNC1(gpu, REG_A5XX_UCHE_TRAP_LOG_HI);

	addr |= FUNC1(gpu, REG_A5XX_UCHE_TRAP_LOG_LO);

	FUNC0(gpu->dev->dev, "UCHE | Out of bounds access | addr=0x%llX\n",
		addr);
}