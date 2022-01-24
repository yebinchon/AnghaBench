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
typedef  int u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int CRTC_CONTROL__CRTC_MASTER_EN_MASK ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 scalar_t__* crtc_offsets ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 scalar_t__ mmCRTC_CONTROL ; 
 scalar_t__ mmCRTC_UPDATE_LOCK ; 

void FUNC5(struct amdgpu_device *adev)
{
	/*Disable VGA render and enabled crtc, if has DCE engine*/
	if (FUNC2(adev)) {
		u32 tmp;
		int crtc_enabled, i;

		FUNC4(adev, false);

		/*Disable crtc*/
		for (i = 0; i < FUNC3(adev); i++) {
			crtc_enabled = FUNC0(mmCRTC_CONTROL + crtc_offsets[i]) &
				CRTC_CONTROL__CRTC_MASTER_EN_MASK;
			if (crtc_enabled) {
				FUNC1(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 1);
				tmp = FUNC0(mmCRTC_CONTROL + crtc_offsets[i]);
				tmp &= ~CRTC_CONTROL__CRTC_MASTER_EN_MASK;
				FUNC1(mmCRTC_CONTROL + crtc_offsets[i], tmp);
				FUNC1(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			}
		}
	}
}