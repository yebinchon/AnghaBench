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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLACKOUT_MODE ; 
 int /*<<< orphan*/  MC_SHARED_BLACKOUT_CNTL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmBIF_FB_EN ; 
 int /*<<< orphan*/  mmMC_SHARED_BLACKOUT_CNTL ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	u32 blackout;

	FUNC4(adev);

	blackout = FUNC2(mmMC_SHARED_BLACKOUT_CNTL);
	if (FUNC0(blackout, MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE) != 1) {
		/* Block CPU access */
		FUNC3(mmBIF_FB_EN, 0);
		/* blackout the MC */
		blackout = FUNC1(blackout,
					 MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE, 1);
		FUNC3(mmMC_SHARED_BLACKOUT_CNTL, blackout);
	}
	/* wait for the MC to settle */
	FUNC5(100);
}