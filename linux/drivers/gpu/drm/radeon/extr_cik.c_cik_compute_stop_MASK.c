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
typedef  scalar_t__ u32 ;
struct radeon_ring {int /*<<< orphan*/  queue; int /*<<< orphan*/  pipe; int /*<<< orphan*/  me; } ;
struct radeon_device {scalar_t__ usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  CP_HQD_ACTIVE ; 
 int /*<<< orphan*/  CP_HQD_DEQUEUE_REQUEST ; 
 int /*<<< orphan*/  CP_HQD_PQ_RPTR ; 
 int /*<<< orphan*/  CP_HQD_PQ_WPTR ; 
 int /*<<< orphan*/  CP_PQ_WPTR_POLL_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ WPTR_POLL_EN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev,
			     struct radeon_ring *ring)
{
	u32 j, tmp;

	FUNC2(rdev, ring->me, ring->pipe, ring->queue, 0);
	/* Disable wptr polling. */
	tmp = FUNC0(CP_PQ_WPTR_POLL_CNTL);
	tmp &= ~WPTR_POLL_EN;
	FUNC1(CP_PQ_WPTR_POLL_CNTL, tmp);
	/* Disable HQD. */
	if (FUNC0(CP_HQD_ACTIVE) & 1) {
		FUNC1(CP_HQD_DEQUEUE_REQUEST, 1);
		for (j = 0; j < rdev->usec_timeout; j++) {
			if (!(FUNC0(CP_HQD_ACTIVE) & 1))
				break;
			FUNC3(1);
		}
		FUNC1(CP_HQD_DEQUEUE_REQUEST, 0);
		FUNC1(CP_HQD_PQ_RPTR, 0);
		FUNC1(CP_HQD_PQ_WPTR, 0);
	}
	FUNC2(rdev, 0, 0, 0, 0);
}