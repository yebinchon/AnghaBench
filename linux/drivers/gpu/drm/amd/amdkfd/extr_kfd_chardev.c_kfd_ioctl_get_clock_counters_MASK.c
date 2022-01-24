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
struct kfd_process {int dummy; } ;
struct kfd_ioctl_get_clock_counters_args {int system_clock_freq; int /*<<< orphan*/  system_clock_counter; int /*<<< orphan*/  cpu_clock_counter; scalar_t__ gpu_clock_counter; int /*<<< orphan*/  gpu_id; } ;
struct kfd_dev {int /*<<< orphan*/  kgd; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct kfd_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct file *filep,
				struct kfd_process *p, void *data)
{
	struct kfd_ioctl_get_clock_counters_args *args = data;
	struct kfd_dev *dev;

	dev = FUNC1(args->gpu_id);
	if (dev)
		/* Reading GPU clock counter from KGD */
		args->gpu_clock_counter = FUNC0(dev->kgd);
	else
		/* Node without GPU resource */
		args->gpu_clock_counter = 0;

	/* No access to rdtsc. Using raw monotonic time */
	args->cpu_clock_counter = FUNC3();
	args->system_clock_counter = FUNC2();

	/* Since the counter is in nano-seconds we use 1GHz frequency */
	args->system_clock_freq = 1000000000;

	return 0;
}