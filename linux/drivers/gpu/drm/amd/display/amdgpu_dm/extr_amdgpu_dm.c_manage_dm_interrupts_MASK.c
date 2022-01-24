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
struct amdgpu_device {int /*<<< orphan*/  pageflip_irq; } ;
struct amdgpu_crtc {int /*<<< orphan*/  base; int /*<<< orphan*/  crtc_id; } ;

/* Variables and functions */
 int FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_device *adev,
				 struct amdgpu_crtc *acrtc,
				 bool enable)
{
	/*
	 * this is not correct translation but will work as soon as VBLANK
	 * constant is the same as PFLIP
	 */
	int irq_type =
		FUNC0(
			adev,
			acrtc->crtc_id);

	if (enable) {
		FUNC4(&acrtc->base);
		FUNC1(
			adev,
			&adev->pageflip_irq,
			irq_type);
	} else {

		FUNC2(
			adev,
			&adev->pageflip_irq,
			irq_type);
		FUNC3(&acrtc->base);
	}
}