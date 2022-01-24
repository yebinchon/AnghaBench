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
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPU_PERFCNT_CFG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG_MODE_OFF ; 
 int /*<<< orphan*/  GPU_PRFCNT_JM_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_MMU_L2_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_SHADER_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_TILER_EN ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct panfrost_device *pfdev)
{
	/* Disable everything before leaving. */
	FUNC1(pfdev, GPU_PERFCNT_CFG,
		  FUNC0(GPU_PERFCNT_CFG_MODE_OFF));
	FUNC1(pfdev, GPU_PRFCNT_JM_EN, 0);
	FUNC1(pfdev, GPU_PRFCNT_SHADER_EN, 0);
	FUNC1(pfdev, GPU_PRFCNT_MMU_L2_EN, 0);
	FUNC1(pfdev, GPU_PRFCNT_TILER_EN, 0);
}