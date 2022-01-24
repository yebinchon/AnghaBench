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
 int /*<<< orphan*/  CRTC_CONTROL ; 
 int /*<<< orphan*/  CRTC_MASTER_EN ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 scalar_t__* crtc_offsets ; 
 int FUNC5 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 scalar_t__ mmCRTC_CONTROL ; 
 scalar_t__ mmCRTC_UPDATE_LOCK ; 

void FUNC7(struct amdgpu_device *adev)
{
	/*Disable VGA render and enabled crtc, if has DCE engine*/
	if (FUNC4(adev)) {
		u32 tmp;
		int crtc_enabled, i;

		FUNC6(adev, false);

		/*Disable crtc*/
		for (i = 0; i < FUNC5(adev); i++) {
			crtc_enabled = FUNC0(FUNC2(mmCRTC_CONTROL + crtc_offsets[i]),
									 CRTC_CONTROL, CRTC_MASTER_EN);
			if (crtc_enabled) {
				FUNC3(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 1);
				tmp = FUNC2(mmCRTC_CONTROL + crtc_offsets[i]);
				tmp = FUNC1(tmp, CRTC_CONTROL, CRTC_MASTER_EN, 0);
				FUNC3(mmCRTC_CONTROL + crtc_offsets[i], tmp);
				FUNC3(mmCRTC_UPDATE_LOCK + crtc_offsets[i], 0);
			}
		}
	}
}