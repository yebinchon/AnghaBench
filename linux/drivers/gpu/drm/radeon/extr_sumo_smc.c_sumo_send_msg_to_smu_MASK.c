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
typedef  int u32 ;
struct radeon_device {int usec_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFX_INT_REQ ; 
 int /*<<< orphan*/  GFX_INT_STATUS ; 
 int INT_ACK ; 
 int INT_DONE ; 
 int INT_REQ ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct radeon_device *rdev, u32 id)
{
	u32 gfx_int_req;
	int i;

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(GFX_INT_STATUS) & INT_DONE)
			break;
		FUNC3(1);
	}

	gfx_int_req = FUNC1(id) | INT_REQ;
	FUNC2(GFX_INT_REQ, gfx_int_req);

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(GFX_INT_REQ) & INT_REQ)
			break;
		FUNC3(1);
	}

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(GFX_INT_STATUS) & INT_ACK)
			break;
		FUNC3(1);
	}

	for (i = 0; i < rdev->usec_timeout; i++) {
		if (FUNC0(GFX_INT_STATUS) & INT_DONE)
			break;
		FUNC3(1);
	}

	gfx_int_req &= ~INT_REQ;
	FUNC2(GFX_INT_REQ, gfx_int_req);
}