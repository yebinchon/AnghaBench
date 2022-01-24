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
struct radeon_ring {int ready; } ;
struct radeon_device {int family; struct radeon_ring* ring; } ;

/* Variables and functions */
#define  CHIP_RV610 132 
#define  CHIP_RV620 131 
#define  CHIP_RV630 130 
#define  CHIP_RV635 129 
#define  CHIP_RV670 128 
 int CHIP_RV740 ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  MC_CONFIG ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t R600_RING_TYPE_UVD_INDEX ; 
 int /*<<< orphan*/  RS_DQ_RD_RET_CONF ; 
 int /*<<< orphan*/  UVD_SEMA_CNTL ; 
 int /*<<< orphan*/  UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  UVD_SEMA_TIMEOUT_STATUS ; 
 int /*<<< orphan*/  UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL ; 
 int /*<<< orphan*/  UVD_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (struct radeon_device*,struct radeon_ring*,int) ; 
 int FUNC6 (struct radeon_device*,size_t,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC7 (struct radeon_device*,struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_ring*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct radeon_device*,int,int) ; 
 int FUNC10 (struct radeon_device*) ; 

int FUNC11(struct radeon_device *rdev)
{
	struct radeon_ring *ring = &rdev->ring[R600_RING_TYPE_UVD_INDEX];
	uint32_t tmp;
	int r;

	/* raise clocks while booting up the VCPU */
	if (rdev->family < CHIP_RV740)
		FUNC9(rdev, 10000, 10000);
	else
		FUNC9(rdev, 53300, 40000);

	r = FUNC10(rdev);
	if (r)
		goto done;

	ring->ready = true;
	r = FUNC6(rdev, R600_RING_TYPE_UVD_INDEX, ring);
	if (r) {
		ring->ready = false;
		goto done;
	}

	r = FUNC5(rdev, ring, 10);
	if (r) {
		FUNC0("radeon: ring failed to lock UVD ring (%d).\n", r);
		goto done;
	}

	tmp = FUNC2(UVD_SEMA_WAIT_FAULT_TIMEOUT_CNTL, 0);
	FUNC8(ring, tmp);
	FUNC8(ring, 0xFFFFF);

	tmp = FUNC2(UVD_SEMA_WAIT_INCOMPLETE_TIMEOUT_CNTL, 0);
	FUNC8(ring, tmp);
	FUNC8(ring, 0xFFFFF);

	tmp = FUNC2(UVD_SEMA_SIGNAL_INCOMPLETE_TIMEOUT_CNTL, 0);
	FUNC8(ring, tmp);
	FUNC8(ring, 0xFFFFF);

	/* Clear timeout status bits */
	FUNC8(ring, FUNC2(UVD_SEMA_TIMEOUT_STATUS, 0));
	FUNC8(ring, 0x8);

	FUNC8(ring, FUNC2(UVD_SEMA_CNTL, 0));
	FUNC8(ring, 3);

	FUNC7(rdev, ring, false);

done:
	/* lower clocks again */
	FUNC9(rdev, 0, 0);

	if (!r) {
		switch (rdev->family) {
		case CHIP_RV610:
		case CHIP_RV630:
		case CHIP_RV620:
			/* 64byte granularity workaround */
			FUNC3(MC_CONFIG, 0);
			FUNC3(MC_CONFIG, 1 << 4);
			FUNC3(RS_DQ_RD_RET_CONF, 0x3f);
			FUNC3(MC_CONFIG, 0x1f);

			/* fall through */
		case CHIP_RV670:
		case CHIP_RV635:

			/* write clean workaround */
			FUNC4(UVD_VCPU_CNTL, 0x10, ~0x10);
			break;

		default:
			/* TODO: Do we need more? */
			break;
		}

		FUNC1("UVD initialized successfully.\n");
	}

	return r;
}