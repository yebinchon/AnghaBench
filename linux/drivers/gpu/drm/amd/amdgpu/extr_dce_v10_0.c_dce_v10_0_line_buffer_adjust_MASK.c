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
typedef  scalar_t__ u32 ;
struct drm_display_mode {int crtc_hdisplay; } ;
struct amdgpu_device {int flags; scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct amdgpu_crtc {scalar_t__ crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  DMIF_BUFFERS_ALLOCATED ; 
 int /*<<< orphan*/  DMIF_BUFFERS_ALLOCATION_COMPLETED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LB_MEMORY_CONFIG ; 
 int /*<<< orphan*/  LB_MEMORY_CTRL ; 
 int /*<<< orphan*/  PIPE0_DMIF_BUFFER_CONTROL ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ mmLB_MEMORY_CTRL ; 
 scalar_t__ mmPIPE0_DMIF_BUFFER_CONTROL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u32 FUNC6(struct amdgpu_device *adev,
				       struct amdgpu_crtc *amdgpu_crtc,
				       struct drm_display_mode *mode)
{
	u32 tmp, buffer_alloc, i, mem_cfg;
	u32 pipe_offset = amdgpu_crtc->crtc_id;
	/*
	 * Line Buffer Setup
	 * There are 6 line buffers, one for each display controllers.
	 * There are 3 partitions per LB. Select the number of partitions
	 * to enable based on the display width.  For display widths larger
	 * than 4096, you need use to use 2 display controllers and combine
	 * them using the stereo blender.
	 */
	if (amdgpu_crtc->base.enabled && mode) {
		if (mode->crtc_hdisplay < 1920) {
			mem_cfg = 1;
			buffer_alloc = 2;
		} else if (mode->crtc_hdisplay < 2560) {
			mem_cfg = 2;
			buffer_alloc = 2;
		} else if (mode->crtc_hdisplay < 4096) {
			mem_cfg = 0;
			buffer_alloc = (adev->flags & AMD_IS_APU) ? 2 : 4;
		} else {
			FUNC0("Mode too big for LB!\n");
			mem_cfg = 0;
			buffer_alloc = (adev->flags & AMD_IS_APU) ? 2 : 4;
		}
	} else {
		mem_cfg = 1;
		buffer_alloc = 0;
	}

	tmp = FUNC3(mmLB_MEMORY_CTRL + amdgpu_crtc->crtc_offset);
	tmp = FUNC2(tmp, LB_MEMORY_CTRL, LB_MEMORY_CONFIG, mem_cfg);
	FUNC4(mmLB_MEMORY_CTRL + amdgpu_crtc->crtc_offset, tmp);

	tmp = FUNC3(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset);
	tmp = FUNC2(tmp, PIPE0_DMIF_BUFFER_CONTROL, DMIF_BUFFERS_ALLOCATED, buffer_alloc);
	FUNC4(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset, tmp);

	for (i = 0; i < adev->usec_timeout; i++) {
		tmp = FUNC3(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset);
		if (FUNC1(tmp, PIPE0_DMIF_BUFFER_CONTROL, DMIF_BUFFERS_ALLOCATION_COMPLETED))
			break;
		FUNC5(1);
	}

	if (amdgpu_crtc->base.enabled && mode) {
		switch (mem_cfg) {
		case 0:
		default:
			return 4096 * 2;
		case 1:
			return 1920 * 2;
		case 2:
			return 2560 * 2;
		}
	}

	/* controller not enabled, so no lb used */
	return 0;
}