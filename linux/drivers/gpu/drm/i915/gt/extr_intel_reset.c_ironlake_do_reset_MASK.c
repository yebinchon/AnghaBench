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
struct intel_uncore {int dummy; } ;
struct intel_gt {struct intel_uncore* uncore; } ;
typedef  int /*<<< orphan*/  intel_engine_mask_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ILK_GDSR ; 
 int ILK_GRDOM_MEDIA ; 
 int ILK_GRDOM_RENDER ; 
 int ILK_GRDOM_RESET_ENABLE ; 
 int FUNC1 (struct intel_uncore*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct intel_uncore*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct intel_uncore*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct intel_gt *gt,
			     intel_engine_mask_t engine_mask,
			     unsigned int retry)
{
	struct intel_uncore *uncore = gt->uncore;
	int ret;

	FUNC3(uncore, ILK_GDSR,
			      ILK_GRDOM_RENDER | ILK_GRDOM_RESET_ENABLE);
	ret = FUNC1(uncore, ILK_GDSR,
					   ILK_GRDOM_RESET_ENABLE, 0,
					   5000, 0,
					   NULL);
	if (ret) {
		FUNC0("Wait for render reset failed\n");
		goto out;
	}

	FUNC3(uncore, ILK_GDSR,
			      ILK_GRDOM_MEDIA | ILK_GRDOM_RESET_ENABLE);
	ret = FUNC1(uncore, ILK_GDSR,
					   ILK_GRDOM_RESET_ENABLE, 0,
					   5000, 0,
					   NULL);
	if (ret) {
		FUNC0("Wait for media reset failed\n");
		goto out;
	}

out:
	FUNC3(uncore, ILK_GDSR, 0);
	FUNC2(uncore, ILK_GDSR);
	return ret;
}