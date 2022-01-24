#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct v9_sdma_mqd {int /*<<< orphan*/  sdma_queue_id; int /*<<< orphan*/  sdma_engine_id; } ;
struct kgd_dev {int dummy; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK ; 
 struct amdgpu_device* FUNC1 (struct kgd_dev*) ; 
 int FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct v9_sdma_mqd* FUNC3 (void*) ; 
 int mmSDMA0_RLC0_RB_CNTL ; 

__attribute__((used)) static bool FUNC4(struct kgd_dev *kgd, void *mqd)
{
	struct amdgpu_device *adev = FUNC1(kgd);
	struct v9_sdma_mqd *m;
	uint32_t sdma_base_addr;
	uint32_t sdma_rlc_rb_cntl;

	m = FUNC3(mqd);
	sdma_base_addr = FUNC2(adev, m->sdma_engine_id,
					    m->sdma_queue_id);

	sdma_rlc_rb_cntl = FUNC0(sdma_base_addr + mmSDMA0_RLC0_RB_CNTL);

	if (sdma_rlc_rb_cntl & SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK)
		return true;

	return false;
}