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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_hpd; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DC_HPD_INT_ACK ; 
 int /*<<< orphan*/  DC_HPD_INT_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* hpd_offsets ; 
 scalar_t__ mmDC_HPD_INT_CONTROL ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
				  int hpd)
{
	u32 tmp;

	if (hpd >= adev->mode_info.num_hpd) {
		FUNC0("invalid hdp %d\n", hpd);
		return;
	}

	tmp = FUNC2(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd]);
	tmp = FUNC1(tmp, DC_HPD_INT_CONTROL, DC_HPD_INT_ACK, 1);
	FUNC3(mmDC_HPD_INT_CONTROL + hpd_offsets[hpd], tmp);
}