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
struct adf_accel_dev {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADF_STATUS_STARTED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(struct adf_accel_dev *accel_dev)
{
	return FUNC0(ADF_STATUS_STARTED, &accel_dev->status);
}