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
struct drm_display_mode {int dummy; } ;
struct amdgpu_device {scalar_t__ usec_timeout; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct amdgpu_crtc {int crtc_id; scalar_t__ crtc_offset; TYPE_1__ base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT ; 
 int PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ mmDC_LB_MEMORY_SPLIT ; 
 scalar_t__ mmPIPE0_DMIF_BUFFER_CONTROL ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static u32 FUNC4(struct amdgpu_device *adev,
				   struct amdgpu_crtc *amdgpu_crtc,
				   struct drm_display_mode *mode,
				   struct drm_display_mode *other_mode)
{
	u32 tmp, buffer_alloc, i;
	u32 pipe_offset = amdgpu_crtc->crtc_id * 0x8;
	/*
	 * Line Buffer Setup
	 * There are 3 line buffers, each one shared by 2 display controllers.
	 * mmDC_LB_MEMORY_SPLIT controls how that line buffer is shared between
	 * the display controllers.  The paritioning is done via one of four
	 * preset allocations specified in bits 21:20:
	 *  0 - half lb
	 *  2 - whole lb, other crtc must be disabled
	 */
	/* this can get tricky if we have two large displays on a paired group
	 * of crtcs.  Ideally for multiple large displays we'd assign them to
	 * non-linked crtcs for maximum line buffer allocation.
	 */
	if (amdgpu_crtc->base.enabled && mode) {
		if (other_mode) {
			tmp = 0; /* 1/2 */
			buffer_alloc = 1;
		} else {
			tmp = 2; /* whole */
			buffer_alloc = 2;
		}
	} else {
		tmp = 0;
		buffer_alloc = 0;
	}

	FUNC2(mmDC_LB_MEMORY_SPLIT + amdgpu_crtc->crtc_offset,
	       FUNC0(tmp));

	FUNC2(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset,
	       (buffer_alloc << PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATED__SHIFT));
	for (i = 0; i < adev->usec_timeout; i++) {
		if (FUNC1(mmPIPE0_DMIF_BUFFER_CONTROL + pipe_offset) &
		    PIPE0_DMIF_BUFFER_CONTROL__DMIF_BUFFERS_ALLOCATION_COMPLETED_MASK)
			break;
		FUNC3(1);
	}

	if (amdgpu_crtc->base.enabled && mode) {
		switch (tmp) {
		case 0:
		default:
			return 4096 * 2;
		case 2:
			return 8192 * 2;
		}
	}

	/* controller not enabled, so no lb used */
	return 0;
}