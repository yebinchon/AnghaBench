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
typedef  int /*<<< orphan*/  u8 ;
struct i40iw_device {scalar_t__ mac_ip_table_idx; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;

/* Variables and functions */
 int FUNC0 (struct i40iw_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i40iw_device*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct i40iw_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC3(struct i40iw_device *iwdev,
							 u8 *macaddr)
{
	enum i40iw_status_code status;

	status = FUNC1(iwdev, &iwdev->mac_ip_table_idx);
	if (!status) {
		status = FUNC0(iwdev, macaddr,
						    (u8)iwdev->mac_ip_table_idx);
		if (status)
			FUNC2(iwdev, (u8)iwdev->mac_ip_table_idx);
	}
	return status;
}