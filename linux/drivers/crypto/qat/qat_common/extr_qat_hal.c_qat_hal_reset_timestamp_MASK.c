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
struct icp_qat_fw_loader_handle {TYPE_1__* hal_handle; } ;
struct TYPE_2__ {unsigned char ae_max_num; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct icp_qat_fw_loader_handle*,int /*<<< orphan*/ ) ; 
 unsigned int MC_TIMESTAMP_ENABLE ; 
 int /*<<< orphan*/  MISC_CONTROL ; 
 int /*<<< orphan*/  FUNC1 (struct icp_qat_fw_loader_handle*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  TIMESTAMP_HIGH ; 
 int /*<<< orphan*/  TIMESTAMP_LOW ; 
 int /*<<< orphan*/  FUNC2 (struct icp_qat_fw_loader_handle*,unsigned char,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct icp_qat_fw_loader_handle *handle)
{
	unsigned int misc_ctl;
	unsigned char ae;

	/* stop the timestamp timers */
	misc_ctl = FUNC0(handle, MISC_CONTROL);
	if (misc_ctl & MC_TIMESTAMP_ENABLE)
		FUNC1(handle, MISC_CONTROL, misc_ctl &
			    (~MC_TIMESTAMP_ENABLE));

	for (ae = 0; ae < handle->hal_handle->ae_max_num; ae++) {
		FUNC2(handle, ae, TIMESTAMP_LOW, 0);
		FUNC2(handle, ae, TIMESTAMP_HIGH, 0);
	}
	/* start timestamp timers */
	FUNC1(handle, MISC_CONTROL, misc_ctl | MC_TIMESTAMP_ENABLE);
}