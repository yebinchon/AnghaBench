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
struct msm_gpu {int dummy; } ;
struct drm_printer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A5XX_CP_ME_STAT_ADDR ; 
 int /*<<< orphan*/  REG_A5XX_CP_ME_STAT_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct msm_gpu *gpu, struct drm_printer *p)
{
	int i;

	FUNC0(p, "ME state:\n");

	for (i = 0; i < 29; i++) {
		FUNC2(gpu, REG_A5XX_CP_ME_STAT_ADDR, i);
		FUNC0(p, "  %02x: %08x\n", i,
			FUNC1(gpu, REG_A5XX_CP_ME_STAT_DATA));
	}

	return 0;
}