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
struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_EN ; 
 int /*<<< orphan*/  CUR_CONTROL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mmCUR_CONTROL ; 
 struct amdgpu_crtc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc)
{
	struct amdgpu_crtc *amdgpu_crtc = FUNC3(crtc);
	struct amdgpu_device *adev = crtc->dev->dev_private;
	u32 tmp;

	tmp = FUNC1(mmCUR_CONTROL + amdgpu_crtc->crtc_offset);
	tmp = FUNC0(tmp, CUR_CONTROL, CURSOR_EN, 0);
	FUNC2(mmCUR_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}