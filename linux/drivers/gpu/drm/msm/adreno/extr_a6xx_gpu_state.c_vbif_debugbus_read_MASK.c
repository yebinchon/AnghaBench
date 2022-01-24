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
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_A6XX_VBIF_TEST_BUS_OUT ; 
 int FUNC0 (struct msm_gpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct msm_gpu*,int,int) ; 

__attribute__((used)) static int FUNC2(struct msm_gpu *gpu, u32 ctrl0, u32 ctrl1,
		u32 reg, int count, u32 *data)
{
	int i;

	FUNC1(gpu, ctrl0, reg);

	for (i = 0; i < count; i++) {
		FUNC1(gpu, ctrl1, i);
		data[i] = FUNC0(gpu, REG_A6XX_VBIF_TEST_BUS_OUT);
	}

	return count;
}