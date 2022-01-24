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
typedef  int u64 ;
typedef  int u32 ;
struct panfrost_job {int jc; int flush_id; int /*<<< orphan*/  requirements; TYPE_1__* file_priv; struct panfrost_device* pfdev; } ;
struct panfrost_device {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  mmu; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_FEATURE_FLUSH_REDUCTION ; 
 int /*<<< orphan*/  HW_ISSUE_10649 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int JS_COMMAND_START ; 
 int JS_CONFIG_ENABLE_FLUSH_REDUCTION ; 
 int JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE ; 
 int JS_CONFIG_START_MMU ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct panfrost_job*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct panfrost_device*,int) ; 
 scalar_t__ FUNC11 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct panfrost_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct panfrost_device*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC17(struct panfrost_job *job, int js)
{
	struct panfrost_device *pfdev = job->pfdev;
	u32 cfg;
	u64 jc_head = job->jc;
	int ret;

	ret = FUNC15(pfdev->dev);
	if (ret < 0)
		return;

	if (FUNC6(FUNC8(pfdev, FUNC0(js)))) {
		FUNC16(pfdev->dev);
		return;
	}

	cfg = FUNC14(pfdev, &job->file_priv->mmu);

	FUNC10(pfdev, js);

	FUNC9(pfdev, FUNC5(js), jc_head & 0xFFFFFFFF);
	FUNC9(pfdev, FUNC4(js), jc_head >> 32);

	FUNC13(pfdev, job->requirements, js);

	/* start MMU, medium priority, cache clean/flush on end, clean/flush on
	 * start */
	cfg |= FUNC2(8) |
		JS_CONFIG_START_FLUSH_CLEAN_INVALIDATE |
		JS_CONFIG_END_FLUSH_CLEAN_INVALIDATE;

	if (FUNC11(pfdev, HW_FEATURE_FLUSH_REDUCTION))
		cfg |= JS_CONFIG_ENABLE_FLUSH_REDUCTION;

	if (FUNC12(pfdev, HW_ISSUE_10649))
		cfg |= JS_CONFIG_START_MMU;

	FUNC9(pfdev, FUNC1(js), cfg);

	if (FUNC11(pfdev, HW_FEATURE_FLUSH_REDUCTION))
		FUNC9(pfdev, FUNC3(js), job->flush_id);

	/* GO ! */
	FUNC7(pfdev->dev, "JS: Submitting atom %p to js[%d] with head=0x%llx",
				job, js, jc_head);

	FUNC9(pfdev, FUNC0(js), JS_COMMAND_START);
}