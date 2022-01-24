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
struct intel_guc {scalar_t__ stage_desc_pool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct intel_guc*) ; 
 int FUNC3 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC4 (struct intel_guc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intel_guc*) ; 

int FUNC6(struct intel_guc *guc)
{
	int ret;

	if (guc->stage_desc_pool)
		return 0;

	ret = FUNC3(guc);
	if (ret)
		return ret;
	/*
	 * Keep static analysers happy, let them know that we allocated the
	 * vma after testing that it didn't exist earlier.
	 */
	FUNC0(!guc->stage_desc_pool);

	FUNC1(!FUNC5(guc));
	ret = FUNC2(guc);
	if (ret)
		goto err_pool;

	return 0;

err_pool:
	FUNC4(guc);
	return ret;
}