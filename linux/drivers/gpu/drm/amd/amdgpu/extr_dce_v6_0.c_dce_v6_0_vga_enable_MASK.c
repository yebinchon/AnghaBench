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
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {size_t crtc_id; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct amdgpu_crtc* FUNC2 (struct drm_crtc*) ; 
 int /*<<< orphan*/ * vga_control_regs ; 

__attribute__((used)) static void FUNC3(struct drm_crtc *crtc, bool enable)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC2(crtc);
	struct drm_device *dev = crtc->dev;
	struct amdgpu_device *adev = dev->dev_private;
	u32 vga_control;

	vga_control = FUNC0(vga_control_regs[amdgpu_crtc->crtc_id]) & ~1;
	FUNC1(vga_control_regs[amdgpu_crtc->crtc_id], vga_control | (enable ? 1 : 0));
}