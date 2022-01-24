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
struct kgd_dev {int dummy; } ;
struct TYPE_3__ {int num_pipe_per_mec; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;

/* Variables and functions */
 int CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK ; 
 int CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK ; 
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct amdgpu_device* FUNC2 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct kgd_dev*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmCPC_INT_CNTL ; 
 int /*<<< orphan*/  FUNC4 (struct kgd_dev*) ; 

__attribute__((used)) static int FUNC5(struct kgd_dev *kgd, uint32_t pipe_id)
{
	struct amdgpu_device *adev = FUNC2(kgd);
	uint32_t mec;
	uint32_t pipe;

	mec = (pipe_id / adev->gfx.mec.num_pipe_per_mec) + 1;
	pipe = (pipe_id % adev->gfx.mec.num_pipe_per_mec);

	FUNC3(kgd, mec, pipe, 0, 0);

	FUNC1(FUNC0(GC, 0, mmCPC_INT_CNTL),
		CP_INT_CNTL_RING0__TIME_STAMP_INT_ENABLE_MASK |
		CP_INT_CNTL_RING0__OPCODE_ERROR_INT_ENABLE_MASK);

	FUNC4(kgd);

	return 0;
}