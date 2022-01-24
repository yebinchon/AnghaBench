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
struct amdgpu_uvd_cs_ctx {TYPE_1__* parser; int /*<<< orphan*/  buf_sizes; } ;
struct TYPE_4__ {int max_handles; int /*<<< orphan*/ * handles; int /*<<< orphan*/ * filp; } ;
struct amdgpu_device {TYPE_2__ uvd; } ;
struct amdgpu_bo {int dummy; } ;
typedef  scalar_t__ int32_t ;
struct TYPE_3__ {int /*<<< orphan*/  filp; struct amdgpu_device* adev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOSPC ; 
 long FUNC2 (struct amdgpu_bo*,void**) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_bo*) ; 
 long FUNC4 (struct amdgpu_device*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct amdgpu_uvd_cs_ctx *ctx,
			     struct amdgpu_bo *bo, unsigned offset)
{
	struct amdgpu_device *adev = ctx->parser->adev;
	int32_t *msg, msg_type, handle;
	void *ptr;
	long r;
	int i;

	if (offset & 0x3F) {
		FUNC1("UVD messages must be 64 byte aligned!\n");
		return -EINVAL;
	}

	r = FUNC2(bo, &ptr);
	if (r) {
		FUNC1("Failed mapping the UVD) message (%ld)!\n", r);
		return r;
	}

	msg = ptr + offset;

	msg_type = msg[1];
	handle = msg[2];

	if (handle == 0) {
		FUNC1("Invalid UVD handle!\n");
		return -EINVAL;
	}

	switch (msg_type) {
	case 0:
		/* it's a create msg, calc image size (width * height) */
		FUNC3(bo);

		/* try to alloc a new handle */
		for (i = 0; i < adev->uvd.max_handles; ++i) {
			if (FUNC6(&adev->uvd.handles[i]) == handle) {
				FUNC1(")Handle 0x%x already in use!\n",
					  handle);
				return -EINVAL;
			}

			if (!FUNC5(&adev->uvd.handles[i], 0, handle)) {
				adev->uvd.filp[i] = ctx->parser->filp;
				return 0;
			}
		}

		FUNC1("No more free UVD handles!\n");
		return -ENOSPC;

	case 1:
		/* it's a decode msg, calc buffer sizes */
		r = FUNC4(adev, msg, ctx->buf_sizes);
		FUNC3(bo);
		if (r)
			return r;

		/* validate the handle */
		for (i = 0; i < adev->uvd.max_handles; ++i) {
			if (FUNC6(&adev->uvd.handles[i]) == handle) {
				if (adev->uvd.filp[i] != ctx->parser->filp) {
					FUNC1("UVD handle collision detected!\n");
					return -EINVAL;
				}
				return 0;
			}
		}

		FUNC1("Invalid UVD handle 0x%x!\n", handle);
		return -ENOENT;

	case 2:
		/* it's a destroy msg, free the handle */
		for (i = 0; i < adev->uvd.max_handles; ++i)
			FUNC5(&adev->uvd.handles[i], handle, 0);
		FUNC3(bo);
		return 0;

	default:
		FUNC1("Illegal UVD message type (%d)!\n", msg_type);
		return -EINVAL;
	}
	FUNC0();
	return -EINVAL;
}