#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int* ptr; } ;
struct radeon_cs_parser {scalar_t__ idx; int /*<<< orphan*/  filp; TYPE_2__* rdev; TYPE_1__ ib; } ;
struct radeon_cs_packet {scalar_t__ reg; scalar_t__ count; int idx; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_crtc {int /*<<< orphan*/  enabled; } ;
struct TYPE_4__ {int /*<<< orphan*/  ddev; } ;

/* Variables and functions */
#define  AVIVO_D1MODE_VLINE_START_END 129 
 int AVIVO_D2MODE_VLINE_START_END ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int) ; 
 int R300_CP_PACKET0_REG_MASK ; 
 int RADEON_CRTC2_GUI_TRIG_VLINE ; 
#define  RADEON_CRTC_GUI_TRIG_VLINE 128 
 int volatile RADEON_ENG_DISPLAY_SELECT_CRTC1 ; 
 int RADEON_WAIT_CRTC_VLINE ; 
 scalar_t__ RADEON_WAIT_UNTIL ; 
 struct drm_crtc* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct radeon_cs_parser*,struct radeon_cs_packet*,scalar_t__) ; 
 int FUNC5 (struct radeon_cs_parser*,int) ; 
 struct radeon_crtc* FUNC6 (struct drm_crtc*) ; 

int FUNC7(struct radeon_cs_parser *p)
{
	struct drm_crtc *crtc;
	struct radeon_crtc *radeon_crtc;
	struct radeon_cs_packet p3reloc, waitreloc;
	int crtc_id;
	int r;
	uint32_t header, h_idx, reg;
	volatile uint32_t *ib;

	ib = p->ib.ptr;

	/* parse the wait until */
	r = FUNC4(p, &waitreloc, p->idx);
	if (r)
		return r;

	/* check its a wait until and only 1 count */
	if (waitreloc.reg != RADEON_WAIT_UNTIL ||
	    waitreloc.count != 0) {
		FUNC0("vline wait had illegal wait until segment\n");
		return -EINVAL;
	}

	if (FUNC5(p, waitreloc.idx + 1) != RADEON_WAIT_CRTC_VLINE) {
		FUNC0("vline wait had illegal wait until\n");
		return -EINVAL;
	}

	/* jump over the NOP */
	r = FUNC4(p, &p3reloc, p->idx + waitreloc.count + 2);
	if (r)
		return r;

	h_idx = p->idx - 2;
	p->idx += waitreloc.count + 2;
	p->idx += p3reloc.count + 2;

	header = FUNC5(p, h_idx);
	crtc_id = FUNC5(p, h_idx + 5);
	reg = FUNC2(header);
	crtc = FUNC3(p->rdev->ddev, p->filp, crtc_id);
	if (!crtc) {
		FUNC0("cannot find crtc %d\n", crtc_id);
		return -ENOENT;
	}
	radeon_crtc = FUNC6(crtc);
	crtc_id = radeon_crtc->crtc_id;

	if (!crtc->enabled) {
		/* if the CRTC isn't enabled - we need to nop out the wait until */
		ib[h_idx + 2] = FUNC1(0);
		ib[h_idx + 3] = FUNC1(0);
	} else if (crtc_id == 1) {
		switch (reg) {
		case AVIVO_D1MODE_VLINE_START_END:
			header &= ~R300_CP_PACKET0_REG_MASK;
			header |= AVIVO_D2MODE_VLINE_START_END >> 2;
			break;
		case RADEON_CRTC_GUI_TRIG_VLINE:
			header &= ~R300_CP_PACKET0_REG_MASK;
			header |= RADEON_CRTC2_GUI_TRIG_VLINE >> 2;
			break;
		default:
			FUNC0("unknown crtc reloc\n");
			return -EINVAL;
		}
		ib[h_idx] = header;
		ib[h_idx + 3] |= RADEON_ENG_DISPLAY_SELECT_CRTC1;
	}

	return 0;
}