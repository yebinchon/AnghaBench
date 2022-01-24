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
struct pidff_device {int* pid_id; int /*<<< orphan*/  hid; } ;
struct input_dev {TYPE_1__* ff; } ;
struct TYPE_2__ {struct pidff_device* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pidff_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pidff_device*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct input_dev *dev, int effect_id)
{
	struct pidff_device *pidff = dev->ff->private;
	int pid_id = pidff->pid_id[effect_id];

	FUNC0(pidff->hid, "starting to erase %d/%d\n",
		effect_id, pidff->pid_id[effect_id]);
	/* Wait for the queue to clear. We do not want a full fifo to
	   prevent the effect removal. */
	FUNC1(pidff->hid);
	FUNC3(pidff, pid_id, 0);
	FUNC2(pidff, pid_id);

	return 0;
}