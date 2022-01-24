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
 int /*<<< orphan*/  REG_A5XX_CP_MEQ_DBG_ADDR ; 
 int /*<<< orphan*/  REG_A5XX_CP_MEQ_DBG_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct drm_printer*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct msm_gpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct msm_gpu *gpu, struct drm_printer *p)
{
	int i;

	FUNC0(p, "MEQ state:\n");
	FUNC2(gpu, REG_A5XX_CP_MEQ_DBG_ADDR, 0);

	for (i = 0; i < 64; i++) {
		FUNC0(p, "  %02x: %08x\n", i,
			FUNC1(gpu, REG_A5XX_CP_MEQ_DBG_DATA));
	}

	return 0;
}