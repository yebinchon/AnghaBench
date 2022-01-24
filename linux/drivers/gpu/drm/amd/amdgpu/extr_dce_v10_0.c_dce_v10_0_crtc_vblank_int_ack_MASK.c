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
struct TYPE_2__ {int num_crtc; } ;
struct amdgpu_device {TYPE_1__ mode_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  LB_VBLANK_STATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VBLANK_ACK ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* crtc_offsets ; 
 scalar_t__ mmLB_VBLANK_STATUS ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
					  int crtc)
{
	u32 tmp;

	if (crtc >= adev->mode_info.num_crtc) {
		FUNC0("invalid crtc %d\n", crtc);
		return;
	}

	tmp = FUNC2(mmLB_VBLANK_STATUS + crtc_offsets[crtc]);
	tmp = FUNC1(tmp, LB_VBLANK_STATUS, VBLANK_ACK, 1);
	FUNC3(mmLB_VBLANK_STATUS + crtc_offsets[crtc], tmp);
}