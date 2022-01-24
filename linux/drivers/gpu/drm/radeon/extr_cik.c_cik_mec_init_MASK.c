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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int num_mec; int num_pipe; int num_queue; int /*<<< orphan*/ * hpd_eop_obj; int /*<<< orphan*/  hpd_eop_gpu_addr; } ;
struct radeon_device {scalar_t__ family; TYPE_1__ mec; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ CHIP_KAVERI ; 
 int MEC_HPD_SIZE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct radeon_device*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static int FUNC10(struct radeon_device *rdev)
{
	int r;
	u32 *hpd;

	/*
	 * KV:    2 MEC, 4 Pipes/MEC, 8 Queues/Pipe - 64 Queues total
	 * CI/KB: 1 MEC, 4 Pipes/MEC, 8 Queues/Pipe - 32 Queues total
	 */
	if (rdev->family == CHIP_KAVERI)
		rdev->mec.num_mec = 2;
	else
		rdev->mec.num_mec = 1;
	rdev->mec.num_pipe = 4;
	rdev->mec.num_queue = rdev->mec.num_mec * rdev->mec.num_pipe * 8;

	if (rdev->mec.hpd_eop_obj == NULL) {
		r = FUNC3(rdev,
				     rdev->mec.num_mec *rdev->mec.num_pipe * MEC_HPD_SIZE * 2,
				     PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_GTT, 0, NULL, NULL,
				     &rdev->mec.hpd_eop_obj);
		if (r) {
			FUNC1(rdev->dev, "(%d) create HDP EOP bo failed\n", r);
			return r;
		}
	}

	r = FUNC7(rdev->mec.hpd_eop_obj, false);
	if (FUNC9(r != 0)) {
		FUNC0(rdev);
		return r;
	}
	r = FUNC6(rdev->mec.hpd_eop_obj, RADEON_GEM_DOMAIN_GTT,
			  &rdev->mec.hpd_eop_gpu_addr);
	if (r) {
		FUNC1(rdev->dev, "(%d) pin HDP EOP bo failed\n", r);
		FUNC0(rdev);
		return r;
	}
	r = FUNC4(rdev->mec.hpd_eop_obj, (void **)&hpd);
	if (r) {
		FUNC1(rdev->dev, "(%d) map HDP EOP bo failed\n", r);
		FUNC0(rdev);
		return r;
	}

	/* clear memory.  Not sure if this is required or not */
	FUNC2(hpd, 0, rdev->mec.num_mec *rdev->mec.num_pipe * MEC_HPD_SIZE * 2);

	FUNC5(rdev->mec.hpd_eop_obj);
	FUNC8(rdev->mec.hpd_eop_obj);

	return 0;
}