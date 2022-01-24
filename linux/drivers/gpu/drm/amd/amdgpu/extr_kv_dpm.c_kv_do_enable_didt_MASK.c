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
typedef  int /*<<< orphan*/  u32 ;
struct kv_power_info {scalar_t__ caps_tcp_ramping; scalar_t__ caps_td_ramping; scalar_t__ caps_db_ramping; scalar_t__ caps_sq_ramping; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK ; 
 int /*<<< orphan*/  DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK ; 
 int /*<<< orphan*/  DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK ; 
 int /*<<< orphan*/  DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixDIDT_DB_CTRL0 ; 
 int /*<<< orphan*/  ixDIDT_SQ_CTRL0 ; 
 int /*<<< orphan*/  ixDIDT_TCP_CTRL0 ; 
 int /*<<< orphan*/  ixDIDT_TD_CTRL0 ; 
 struct kv_power_info* FUNC2 (struct amdgpu_device*) ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev, bool enable)
{
	struct kv_power_info *pi = FUNC2(adev);
	u32 data;

	if (pi->caps_sq_ramping) {
		data = FUNC0(ixDIDT_SQ_CTRL0);
		if (enable)
			data |= DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK;
		else
			data &= ~DIDT_SQ_CTRL0__DIDT_CTRL_EN_MASK;
		FUNC1(ixDIDT_SQ_CTRL0, data);
	}

	if (pi->caps_db_ramping) {
		data = FUNC0(ixDIDT_DB_CTRL0);
		if (enable)
			data |= DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK;
		else
			data &= ~DIDT_DB_CTRL0__DIDT_CTRL_EN_MASK;
		FUNC1(ixDIDT_DB_CTRL0, data);
	}

	if (pi->caps_td_ramping) {
		data = FUNC0(ixDIDT_TD_CTRL0);
		if (enable)
			data |= DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK;
		else
			data &= ~DIDT_TD_CTRL0__DIDT_CTRL_EN_MASK;
		FUNC1(ixDIDT_TD_CTRL0, data);
	}

	if (pi->caps_tcp_ramping) {
		data = FUNC0(ixDIDT_TCP_CTRL0);
		if (enable)
			data |= DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK;
		else
			data &= ~DIDT_TCP_CTRL0__DIDT_CTRL_EN_MASK;
		FUNC1(ixDIDT_TCP_CTRL0, data);
	}
}