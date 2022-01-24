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
 struct amdgpu_device* FUNC0 (struct kgd_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct kgd_dev*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct kgd_dev *kgd, uint32_t pipe_id,
				uint32_t queue_id)
{
	struct amdgpu_device *adev = FUNC0(kgd);

	uint32_t mec = (pipe_id / adev->gfx.mec.num_pipe_per_mec) + 1;
	uint32_t pipe = (pipe_id % adev->gfx.mec.num_pipe_per_mec);

	FUNC1(kgd, mec, pipe, queue_id, 0);
}