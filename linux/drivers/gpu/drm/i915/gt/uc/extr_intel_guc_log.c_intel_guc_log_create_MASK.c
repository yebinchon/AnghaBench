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
typedef  scalar_t__ u32 ;
struct intel_guc_log {int /*<<< orphan*/  level; struct i915_vma* vma; } ;
struct intel_guc {int dummy; } ;
struct i915_vma {int dummy; } ;

/* Variables and functions */
 scalar_t__ CRASH_BUFFER_SIZE ; 
 scalar_t__ DPC_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ISR_BUFFER_SIZE ; 
 scalar_t__ FUNC5 (struct i915_vma*) ; 
 scalar_t__ PAGE_SIZE ; 
 int FUNC6 (struct i915_vma*) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 struct i915_vma* FUNC9 (struct intel_guc*,scalar_t__) ; 
 struct intel_guc* FUNC10 (struct intel_guc_log*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

int FUNC12(struct intel_guc_log *log)
{
	struct intel_guc *guc = FUNC10(log);
	struct i915_vma *vma;
	u32 guc_log_size;
	int ret;

	FUNC2(log->vma);

	/*
	 *  GuC Log buffer Layout
	 *
	 *  +===============================+ 00B
	 *  |    Crash dump state header    |
	 *  +-------------------------------+ 32B
	 *  |       DPC state header        |
	 *  +-------------------------------+ 64B
	 *  |       ISR state header        |
	 *  +-------------------------------+ 96B
	 *  |                               |
	 *  +===============================+ PAGE_SIZE (4KB)
	 *  |        Crash Dump logs        |
	 *  +===============================+ + CRASH_SIZE
	 *  |           DPC logs            |
	 *  +===============================+ + DPC_SIZE
	 *  |           ISR logs            |
	 *  +===============================+ + ISR_SIZE
	 */
	guc_log_size = PAGE_SIZE + CRASH_BUFFER_SIZE + DPC_BUFFER_SIZE +
			ISR_BUFFER_SIZE;

	vma = FUNC9(guc, guc_log_size);
	if (FUNC5(vma)) {
		ret = FUNC6(vma);
		goto err;
	}

	log->vma = vma;

	log->level = FUNC7(log);
	FUNC0("guc_log_level=%d (%s, verbose:%s, verbosity:%d)\n",
			 log->level, FUNC8(log->level),
			 FUNC11(FUNC3(log->level)),
			 FUNC4(log->level));

	return 0;

err:
	FUNC1("Failed to allocate GuC log buffer. %d\n", ret);
	return ret;
}