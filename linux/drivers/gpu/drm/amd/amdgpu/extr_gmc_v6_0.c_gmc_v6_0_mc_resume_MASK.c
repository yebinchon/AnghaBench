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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIF_FB_EN ; 
 int /*<<< orphan*/  BLACKOUT_MODE ; 
 int /*<<< orphan*/  FB_READ_EN ; 
 int /*<<< orphan*/  FB_WRITE_EN ; 
 int /*<<< orphan*/  MC_SHARED_BLACKOUT_CNTL ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  mmBIF_FB_EN ; 
 int /*<<< orphan*/  mmMC_SHARED_BLACKOUT_CNTL ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev)
{
	u32 tmp;

	/* unblackout the MC */
	tmp = FUNC1(mmMC_SHARED_BLACKOUT_CNTL);
	tmp = FUNC0(tmp, MC_SHARED_BLACKOUT_CNTL, BLACKOUT_MODE, 0);
	FUNC2(mmMC_SHARED_BLACKOUT_CNTL, tmp);
	/* allow CPU access */
	tmp = FUNC0(0, BIF_FB_EN, FB_READ_EN, 1);
	tmp = FUNC0(tmp, BIF_FB_EN, FB_WRITE_EN, 1);
	FUNC2(mmBIF_FB_EN, tmp);
}