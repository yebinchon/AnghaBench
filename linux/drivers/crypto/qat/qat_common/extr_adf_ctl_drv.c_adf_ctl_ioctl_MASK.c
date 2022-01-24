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
struct file {int dummy; } ;

/* Variables and functions */
 long EFAULT ; 
#define  IOCTL_CONFIG_SYS_RESOURCE_PARAMETERS 132 
#define  IOCTL_GET_NUM_DEVICES 131 
#define  IOCTL_START_ACCEL_DEV 130 
#define  IOCTL_STATUS_ACCEL_DEV 129 
#define  IOCTL_STOP_ACCEL_DEV 128 
 int FUNC0 (struct file*,unsigned int,unsigned long) ; 
 int FUNC1 (struct file*,unsigned int,unsigned long) ; 
 int FUNC2 (struct file*,unsigned int,unsigned long) ; 
 int FUNC3 (struct file*,unsigned int,unsigned long) ; 
 int FUNC4 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  adf_ctl_lock ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static long FUNC8(struct file *fp, unsigned int cmd, unsigned long arg)
{
	int ret;

	if (FUNC5(&adf_ctl_lock))
		return -EFAULT;

	switch (cmd) {
	case IOCTL_CONFIG_SYS_RESOURCE_PARAMETERS:
		ret = FUNC0(fp, cmd, arg);
		break;

	case IOCTL_STOP_ACCEL_DEV:
		ret = FUNC2(fp, cmd, arg);
		break;

	case IOCTL_START_ACCEL_DEV:
		ret = FUNC1(fp, cmd, arg);
		break;

	case IOCTL_GET_NUM_DEVICES:
		ret = FUNC3(fp, cmd, arg);
		break;

	case IOCTL_STATUS_ACCEL_DEV:
		ret = FUNC4(fp, cmd, arg);
		break;
	default:
		FUNC7("QAT: Invalid ioctl\n");
		ret = -EFAULT;
		break;
	}
	FUNC6(&adf_ctl_lock);
	return ret;
}