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
 int /*<<< orphan*/  ICP_QAT_FW_CONSTANTS_CFG ; 
 int /*<<< orphan*/  ICP_QAT_FW_INIT_ME ; 
 int FUNC0 (struct adf_accel_dev*,int /*<<< orphan*/ ) ; 

int FUNC1(struct adf_accel_dev *accel_dev)
{
	int ret = FUNC0(accel_dev, ICP_QAT_FW_INIT_ME);

	if (ret)
		return ret;
	return FUNC0(accel_dev, ICP_QAT_FW_CONSTANTS_CFG);
}