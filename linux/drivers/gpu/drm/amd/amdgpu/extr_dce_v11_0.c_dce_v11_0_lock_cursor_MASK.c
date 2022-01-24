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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_crtc {TYPE_1__* dev; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct TYPE_2__ {struct amdgpu_device* dev_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURSOR_UPDATE_LOCK ; 
 int /*<<< orphan*/  CUR_UPDATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ mmCUR_UPDATE ; 
 struct amdgpu_crtc* FUNC3 (struct drm_crtc*) ; 

__attribute__((used)) static void FUNC4(struct drm_crtc *crtc, bool lock)
{
	struct amdgpu_device *adev = crtc->dev->dev_private;
	struct amdgpu_crtc *amdgpu_crtc = FUNC3(crtc);
	uint32_t cur_lock;

	cur_lock = FUNC1(mmCUR_UPDATE + amdgpu_crtc->crtc_offset);
	if (lock)
		cur_lock = FUNC0(cur_lock, CUR_UPDATE, CURSOR_UPDATE_LOCK, 1);
	else
		cur_lock = FUNC0(cur_lock, CUR_UPDATE, CURSOR_UPDATE_LOCK, 0);
	FUNC2(mmCUR_UPDATE + amdgpu_crtc->crtc_offset, cur_lock);
}