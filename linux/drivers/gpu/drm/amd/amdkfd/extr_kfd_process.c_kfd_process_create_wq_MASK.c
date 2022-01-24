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

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ kfd_process_wq ; 
 scalar_t__ kfd_restore_wq ; 

int FUNC3(void)
{
	if (!kfd_process_wq)
		kfd_process_wq = FUNC1("kfd_process_wq", 0, 0);
	if (!kfd_restore_wq)
		kfd_restore_wq = FUNC0("kfd_restore_wq", 0);

	if (!kfd_process_wq || !kfd_restore_wq) {
		FUNC2();
		return -ENOMEM;
	}

	return 0;
}