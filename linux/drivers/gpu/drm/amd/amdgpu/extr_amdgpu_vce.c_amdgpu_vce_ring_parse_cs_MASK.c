#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct amdgpu_ib {unsigned int length_dw; int /*<<< orphan*/  sa_bo; int /*<<< orphan*/  gpu_addr; } ;
struct amdgpu_cs_parser {TYPE_3__* adev; TYPE_1__* job; } ;
struct TYPE_5__ {size_t* img_size; int /*<<< orphan*/ * handles; } ;
struct TYPE_6__ {TYPE_2__ vce; int /*<<< orphan*/  asic_type; } ;
struct TYPE_4__ {int /*<<< orphan*/ * vm; struct amdgpu_ib* ibs; } ;

/* Variables and functions */
 int AMDGPU_MAX_VCE_HANDLES ; 
#define  CHIP_CARRIZO 130 
#define  CHIP_KAVERI 129 
#define  CHIP_MULLINS 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int FUNC1 (struct amdgpu_cs_parser*,size_t,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct amdgpu_cs_parser*,size_t,unsigned int,unsigned int,size_t,unsigned int) ; 
 int FUNC4 (struct amdgpu_cs_parser*,size_t,unsigned int,unsigned int,int,unsigned int) ; 
 int FUNC5 (struct amdgpu_cs_parser*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(struct amdgpu_cs_parser *p, uint32_t ib_idx)
{
	struct amdgpu_ib *ib = &p->job->ibs[ib_idx];
	unsigned fb_idx = 0, bs_idx = 0;
	int session_idx = -1;
	uint32_t destroyed = 0;
	uint32_t created = 0;
	uint32_t allocated = 0;
	uint32_t tmp, handle = 0;
	uint32_t *size = &tmp;
	unsigned idx;
	int i, r = 0;

	p->job->vm = NULL;
	ib->gpu_addr = FUNC2(ib->sa_bo);

	for (idx = 0; idx < ib->length_dw;) {
		uint32_t len = FUNC1(p, ib_idx, idx);
		uint32_t cmd = FUNC1(p, ib_idx, idx + 1);

		if ((len < 8) || (len & 3)) {
			FUNC0("invalid VCE command length (%d)!\n", len);
			r = -EINVAL;
			goto out;
		}

		switch (cmd) {
		case 0x00000002: /* task info */
			fb_idx = FUNC1(p, ib_idx, idx + 6);
			bs_idx = FUNC1(p, ib_idx, idx + 7);
			break;

		case 0x03000001: /* encode */
			r = FUNC4(p, ib_idx, idx + 10,
						   idx + 9, 0, 0);
			if (r)
				goto out;

			r = FUNC4(p, ib_idx, idx + 12,
						   idx + 11, 0, 0);
			if (r)
				goto out;
			break;

		case 0x05000001: /* context buffer */
			r = FUNC4(p, ib_idx, idx + 3,
						   idx + 2, 0, 0);
			if (r)
				goto out;
			break;

		case 0x05000004: /* video bitstream buffer */
			tmp = FUNC1(p, ib_idx, idx + 4);
			r = FUNC4(p, ib_idx, idx + 3, idx + 2,
						   tmp, bs_idx);
			if (r)
				goto out;
			break;

		case 0x05000005: /* feedback buffer */
			r = FUNC4(p, ib_idx, idx + 3, idx + 2,
						   4096, fb_idx);
			if (r)
				goto out;
			break;

		case 0x0500000d: /* MV buffer */
			r = FUNC4(p, ib_idx, idx + 3,
							idx + 2, 0, 0);
			if (r)
				goto out;

			r = FUNC4(p, ib_idx, idx + 8,
							idx + 7, 0, 0);
			if (r)
				goto out;
			break;
		}

		idx += len / 4;
	}

	for (idx = 0; idx < ib->length_dw;) {
		uint32_t len = FUNC1(p, ib_idx, idx);
		uint32_t cmd = FUNC1(p, ib_idx, idx + 1);

		switch (cmd) {
		case 0x00000001: /* session */
			handle = FUNC1(p, ib_idx, idx + 2);
			session_idx = FUNC5(p, handle,
								 &allocated);
			if (session_idx < 0) {
				r = session_idx;
				goto out;
			}
			size = &p->adev->vce.img_size[session_idx];
			break;

		case 0x00000002: /* task info */
			fb_idx = FUNC1(p, ib_idx, idx + 6);
			bs_idx = FUNC1(p, ib_idx, idx + 7);
			break;

		case 0x01000001: /* create */
			created |= 1 << session_idx;
			if (destroyed & (1 << session_idx)) {
				destroyed &= ~(1 << session_idx);
				allocated |= 1 << session_idx;

			} else if (!(allocated & (1 << session_idx))) {
				FUNC0("Handle already in use!\n");
				r = -EINVAL;
				goto out;
			}

			*size = FUNC1(p, ib_idx, idx + 8) *
				FUNC1(p, ib_idx, idx + 10) *
				8 * 3 / 2;
			break;

		case 0x04000001: /* config extension */
		case 0x04000002: /* pic control */
		case 0x04000005: /* rate control */
		case 0x04000007: /* motion estimation */
		case 0x04000008: /* rdo */
		case 0x04000009: /* vui */
		case 0x05000002: /* auxiliary buffer */
		case 0x05000009: /* clock table */
			break;

		case 0x0500000c: /* hw config */
			switch (p->adev->asic_type) {
#ifdef CONFIG_DRM_AMDGPU_CIK
			case CHIP_KAVERI:
			case CHIP_MULLINS:
#endif
			case CHIP_CARRIZO:
				break;
			default:
				r = -EINVAL;
				goto out;
			}
			break;

		case 0x03000001: /* encode */
			r = FUNC3(p, ib_idx, idx + 10, idx + 9,
						*size, 0);
			if (r)
				goto out;

			r = FUNC3(p, ib_idx, idx + 12, idx + 11,
						*size / 3, 0);
			if (r)
				goto out;
			break;

		case 0x02000001: /* destroy */
			destroyed |= 1 << session_idx;
			break;

		case 0x05000001: /* context buffer */
			r = FUNC3(p, ib_idx, idx + 3, idx + 2,
						*size * 2, 0);
			if (r)
				goto out;
			break;

		case 0x05000004: /* video bitstream buffer */
			tmp = FUNC1(p, ib_idx, idx + 4);
			r = FUNC3(p, ib_idx, idx + 3, idx + 2,
						tmp, bs_idx);
			if (r)
				goto out;
			break;

		case 0x05000005: /* feedback buffer */
			r = FUNC3(p, ib_idx, idx + 3, idx + 2,
						4096, fb_idx);
			if (r)
				goto out;
			break;

		case 0x0500000d: /* MV buffer */
			r = FUNC3(p, ib_idx, idx + 3,
							idx + 2, *size, 0);
			if (r)
				goto out;

			r = FUNC3(p, ib_idx, idx + 8,
							idx + 7, *size / 12, 0);
			if (r)
				goto out;
			break;

		default:
			FUNC0("invalid VCE command (0x%x)!\n", cmd);
			r = -EINVAL;
			goto out;
		}

		if (session_idx == -1) {
			FUNC0("no session command at start of IB\n");
			r = -EINVAL;
			goto out;
		}

		idx += len / 4;
	}

	if (allocated & ~created) {
		FUNC0("New session without create command!\n");
		r = -ENOENT;
	}

out:
	if (!r) {
		/* No error, free all destroyed handle slots */
		tmp = destroyed;
	} else {
		/* Error during parsing, free all allocated handle slots */
		tmp = allocated;
	}

	for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i)
		if (tmp & (1 << i))
			FUNC6(&p->adev->vce.handles[i], 0);

	return r;
}