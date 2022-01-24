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
typedef  int u32 ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct amdgpu_device {TYPE_1__ doorbell; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOORBELL_SELFRING_GPA_APER_CNTL ; 
 int /*<<< orphan*/  DOORBELL_SELFRING_GPA_APER_EN ; 
 int /*<<< orphan*/  DOORBELL_SELFRING_GPA_APER_MODE ; 
 int /*<<< orphan*/  DOORBELL_SELFRING_GPA_APER_SIZE ; 
 int /*<<< orphan*/  NBIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmDOORBELL_SELFRING_GPA_APER_BASE_HIGH ; 
 int /*<<< orphan*/  mmDOORBELL_SELFRING_GPA_APER_BASE_LOW ; 
 int /*<<< orphan*/  mmDOORBELL_SELFRING_GPA_APER_CNTL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
							bool enable)
{
	u32 tmp = 0;

	if (enable) {
		tmp = FUNC0(tmp, DOORBELL_SELFRING_GPA_APER_CNTL, DOORBELL_SELFRING_GPA_APER_EN, 1) |
		      FUNC0(tmp, DOORBELL_SELFRING_GPA_APER_CNTL, DOORBELL_SELFRING_GPA_APER_MODE, 1) |
		      FUNC0(tmp, DOORBELL_SELFRING_GPA_APER_CNTL, DOORBELL_SELFRING_GPA_APER_SIZE, 0);

		FUNC1(NBIO, 0, mmDOORBELL_SELFRING_GPA_APER_BASE_LOW,
			     FUNC2(adev->doorbell.base));
		FUNC1(NBIO, 0, mmDOORBELL_SELFRING_GPA_APER_BASE_HIGH,
			     FUNC3(adev->doorbell.base));
	}

	FUNC1(NBIO, 0, mmDOORBELL_SELFRING_GPA_APER_CNTL, tmp);
}