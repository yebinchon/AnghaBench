#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct task_struct {scalar_t__ mm; TYPE_1__* group_leader; } ;
struct TYPE_8__ {char* name; int /*<<< orphan*/  mode; } ;
struct kfd_process {TYPE_2__* lead_thread; TYPE_3__ attr_pasid; int /*<<< orphan*/  kobj; } ;
struct file {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_7__ {scalar_t__ pid; } ;
struct TYPE_6__ {scalar_t__ mm; } ;

/* Variables and functions */
 int EINVAL ; 
 struct kfd_process* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kfd_process*) ; 
 int /*<<< orphan*/  KFD_SYSFS_FILE_MODE ; 
 struct kfd_process* FUNC2 (struct task_struct*) ; 
 struct task_struct* current ; 
 struct kfd_process* FUNC3 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kfd_process*,struct file*) ; 
 int /*<<< orphan*/  kfd_processes_mutex ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 TYPE_5__ procfs ; 
 int /*<<< orphan*/  procfs_type ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,TYPE_3__*) ; 

struct kfd_process *FUNC13(struct file *filep)
{
	struct kfd_process *process;
	struct task_struct *thread = current;
	int ret;

	if (!thread->mm)
		return FUNC0(-EINVAL);

	/* Only the pthreads threading model is supported. */
	if (thread->group_leader->mm != thread->mm)
		return FUNC0(-EINVAL);

	/*
	 * take kfd processes mutex before starting of process creation
	 * so there won't be a case where two threads of the same process
	 * create two kfd_process structures
	 */
	FUNC7(&kfd_processes_mutex);

	/* A prior open of /dev/kfd could have already created the process. */
	process = FUNC3(thread);
	if (process) {
		FUNC9("Process already found\n");
	} else {
		process = FUNC2(thread);
		if (FUNC1(process))
			goto out;

		ret = FUNC5(process, filep);
		if (ret) {
			process = FUNC0(ret);
			goto out;
		}

		if (!procfs.kobj)
			goto out;

		process->kobj = FUNC4(process->kobj);
		if (!process->kobj) {
			FUNC10("Creating procfs kobject failed");
			goto out;
		}
		ret = FUNC6(process->kobj, &procfs_type,
					   procfs.kobj, "%d",
					   (int)process->lead_thread->pid);
		if (ret) {
			FUNC10("Creating procfs pid directory failed");
			goto out;
		}

		process->attr_pasid.name = "pasid";
		process->attr_pasid.mode = KFD_SYSFS_FILE_MODE;
		FUNC11(&process->attr_pasid);
		ret = FUNC12(process->kobj, &process->attr_pasid);
		if (ret)
			FUNC10("Creating pasid for pid %d failed",
					(int)process->lead_thread->pid);
	}
out:
	FUNC8(&kfd_processes_mutex);

	return process;
}