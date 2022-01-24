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
struct amdgpu_ib {int length_dw; } ;
struct amdgpu_cs_parser {TYPE_3__* adev; TYPE_1__* job; } ;
struct TYPE_5__ {int /*<<< orphan*/ * handles; } ;
struct TYPE_6__ {TYPE_2__ vce; } ;
struct TYPE_4__ {struct amdgpu_ib* ibs; } ;

/* Variables and functions */
 int AMDGPU_MAX_VCE_HANDLES ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t FUNC1 (struct amdgpu_cs_parser*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,struct amdgpu_ib*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct amdgpu_cs_parser*,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(struct amdgpu_cs_parser *p, uint32_t ib_idx)
{
	struct amdgpu_ib *ib = &p->job->ibs[ib_idx];
	int session_idx = -1;
	uint32_t destroyed = 0;
	uint32_t created = 0;
	uint32_t allocated = 0;
	uint32_t tmp, handle = 0;
	int i, r = 0, idx = 0;

	while (idx < ib->length_dw) {
		uint32_t len = FUNC1(p, ib_idx, idx);
		uint32_t cmd = FUNC1(p, ib_idx, idx + 1);

		if ((len < 8) || (len & 3)) {
			FUNC0("invalid VCE command length (%d)!\n", len);
			r = -EINVAL;
			goto out;
		}

		switch (cmd) {
		case 0x00000001: /* session */
			handle = FUNC1(p, ib_idx, idx + 2);
			session_idx = FUNC3(p, handle,
								 &allocated);
			if (session_idx < 0) {
				r = session_idx;
				goto out;
			}
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

			break;

		case 0x02000001: /* destroy */
			destroyed |= 1 << session_idx;
			break;

		default:
			break;
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
		FUNC2(p->adev, ib, NULL);
	} else {
		/* Error during parsing, free all allocated handle slots */
		tmp = allocated;
	}

	for (i = 0; i < AMDGPU_MAX_VCE_HANDLES; ++i)
		if (tmp & (1 << i))
			FUNC4(&p->adev->vce.handles[i], 0);

	return r;
}