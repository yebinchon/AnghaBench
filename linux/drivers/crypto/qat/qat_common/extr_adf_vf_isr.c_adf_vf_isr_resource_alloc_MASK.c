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
struct adf_accel_dev {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (struct adf_accel_dev*) ; 
 scalar_t__ FUNC1 (struct adf_accel_dev*) ; 
 scalar_t__ FUNC2 (struct adf_accel_dev*) ; 
 scalar_t__ FUNC3 (struct adf_accel_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct adf_accel_dev*) ; 

int FUNC5(struct adf_accel_dev *accel_dev)
{
	if (FUNC0(accel_dev))
		goto err_out;

	if (FUNC3(accel_dev))
		goto err_out;

	if (FUNC2(accel_dev))
		goto err_out;

	if (FUNC1(accel_dev))
		goto err_out;

	return 0;
err_out:
	FUNC4(accel_dev);
	return -EFAULT;
}