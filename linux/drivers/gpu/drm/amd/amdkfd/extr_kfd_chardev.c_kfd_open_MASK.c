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
struct kfd_process {int /*<<< orphan*/  is_32bit_user_mode; int /*<<< orphan*/  pasid; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int EPERM ; 
 scalar_t__ FUNC0 (struct kfd_process*) ; 
 int FUNC1 (struct kfd_process*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 () ; 
 struct kfd_process* FUNC6 (struct file*) ; 
 int /*<<< orphan*/  kfd_device ; 
 scalar_t__ FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *filep)
{
	struct kfd_process *process;
	bool is_32bit_user_mode;

	if (FUNC4(inode) != 0)
		return -ENODEV;

	is_32bit_user_mode = FUNC5();

	if (is_32bit_user_mode) {
		FUNC3(kfd_device,
			"Process %d (32-bit) failed to open /dev/kfd\n"
			"32-bit processes are not supported by amdkfd\n",
			current->pid);
		return -EPERM;
	}

	process = FUNC6(filep);
	if (FUNC0(process))
		return FUNC1(process);

	if (FUNC7())
		return -EAGAIN;

	FUNC2(kfd_device, "process %d opened, compat mode (32 bit) - %d\n",
		process->pasid, process->is_32bit_user_mode);

	return 0;
}