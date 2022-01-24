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
struct task_ipc {void* in; void* out; int /*<<< orphan*/  work; scalar_t__ value; int /*<<< orphan*/  started; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  task_ipc ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(void *arg)
{
	struct task_ipc ipc;
	int ret = 0;

	/* Test use of i915_sw_fence as an interprocess signaling mechanism */
	ipc.in = FUNC2();
	if (!ipc.in)
		return -ENOMEM;
	ipc.out = FUNC2();
	if (!ipc.out) {
		ret = -ENOMEM;
		goto err_in;
	}

	/* use a completion to avoid chicken-and-egg testing */
	FUNC8(&ipc.started);

	ipc.value = 0;
	FUNC0(&ipc.work, task_ipc);
	FUNC10(&ipc.work);

	FUNC12(&ipc.started);

	FUNC11(1000, 2000);
	if (FUNC1(ipc.value)) {
		FUNC9("worker updated value before i915_sw_fence was signaled\n");
		ret = -EINVAL;
	}

	FUNC6(ipc.in);
	FUNC7(ipc.out);

	if (!FUNC1(ipc.value)) {
		FUNC9("worker signaled i915_sw_fence before value was posted\n");
		ret = -EINVAL;
	}

	FUNC4(&ipc.work);
	FUNC3(&ipc.work);
	FUNC5(ipc.out);
err_in:
	FUNC5(ipc.in);
	return ret;
}