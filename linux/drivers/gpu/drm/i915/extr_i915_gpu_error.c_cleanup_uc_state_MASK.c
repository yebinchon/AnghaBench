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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
struct TYPE_3__ {int /*<<< orphan*/  path; } ;
struct i915_error_uc {int /*<<< orphan*/  guc_log; TYPE_2__ huc_fw; TYPE_1__ guc_fw; } ;
struct i915_gpu_state {struct i915_error_uc uc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct i915_gpu_state *error)
{
	struct i915_error_uc *error_uc = &error->uc;

	FUNC1(error_uc->guc_fw.path);
	FUNC1(error_uc->huc_fw.path);
	FUNC0(error_uc->guc_log);
}