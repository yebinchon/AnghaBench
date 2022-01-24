#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct panfrost_perfcnt {TYPE_2__* bo; int /*<<< orphan*/ * buf; struct panfrost_file_priv* user; } ;
struct panfrost_file_priv {int dummy; } ;
struct panfrost_device {int /*<<< orphan*/  dev; struct panfrost_perfcnt* perfcnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  base; } ;
struct TYPE_4__ {TYPE_1__ base; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPU_PERFCNT_CFG_MODE_OFF ; 
 int /*<<< orphan*/  GPU_PRFCNT_JM_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_MMU_L2_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_SHADER_EN ; 
 int /*<<< orphan*/  GPU_PRFCNT_TILER_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct panfrost_device *pfdev,
					   struct panfrost_file_priv *user)
{
	struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;

	if (user != perfcnt->user)
		return -EINVAL;

	FUNC3(pfdev, GPU_PRFCNT_JM_EN, 0x0);
	FUNC3(pfdev, GPU_PRFCNT_SHADER_EN, 0x0);
	FUNC3(pfdev, GPU_PRFCNT_MMU_L2_EN, 0x0);
	FUNC3(pfdev, GPU_PRFCNT_TILER_EN, 0);
	FUNC3(pfdev, GPU_PERFCNT_CFG,
		  FUNC0(GPU_PERFCNT_CFG_MODE_OFF));

	perfcnt->user = NULL;
	FUNC2(&perfcnt->bo->base.base, perfcnt->buf);
	perfcnt->buf = NULL;
	FUNC1(&perfcnt->bo->base.base);
	perfcnt->bo = NULL;
	FUNC4(pfdev->dev);
	FUNC5(pfdev->dev);

	return 0;
}