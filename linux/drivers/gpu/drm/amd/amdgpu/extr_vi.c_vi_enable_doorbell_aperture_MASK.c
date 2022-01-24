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
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int AMD_IS_APU ; 
 int /*<<< orphan*/  BIF_DOORBELL_APER_EN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmBIF_DOORBELL_APER_EN ; 

__attribute__((used)) static void FUNC3(struct amdgpu_device *adev,
					bool enable)
{
	u32 tmp;

	/* not necessary on CZ */
	if (adev->flags & AMD_IS_APU)
		return;

	tmp = FUNC1(mmBIF_DOORBELL_APER_EN);
	if (enable)
		tmp = FUNC0(tmp, BIF_DOORBELL_APER_EN, BIF_DOORBELL_APER_EN, 1);
	else
		tmp = FUNC0(tmp, BIF_DOORBELL_APER_EN, BIF_DOORBELL_APER_EN, 0);

	FUNC2(mmBIF_DOORBELL_APER_EN, tmp);
}