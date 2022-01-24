#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int enabled; scalar_t__ ring_size; } ;
struct TYPE_6__ {int enabled; scalar_t__ ring_size; } ;
struct TYPE_5__ {int enabled; } ;
struct TYPE_8__ {TYPE_3__ ih2; TYPE_2__ ih1; TYPE_1__ ih; } ;
struct amdgpu_device {TYPE_4__ irq; int /*<<< orphan*/  psp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ENABLE_INTR ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  IH_RB_CNTL_RING2 ; 
 int /*<<< orphan*/  OSSSYS ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  PSP_REG_IH_RB_CNTL_RING2 ; 
 int /*<<< orphan*/  RB_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING2 ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct amdgpu_device *adev)
{
	u32 ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL);

	ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL, RB_ENABLE, 1);
	ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL, ENABLE_INTR, 1);
	if (FUNC4(adev)) {
		if (FUNC5(&adev->psp, PSP_REG_IH_RB_CNTL, ih_rb_cntl)) {
			FUNC0("PSP program IH_RB_CNTL failed!\n");
			return;
		}
	} else {
		FUNC3(OSSSYS, 0, mmIH_RB_CNTL, ih_rb_cntl);
	}
	adev->irq.ih.enabled = true;

	if (adev->irq.ih1.ring_size) {
		ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL_RING1);
		ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL_RING1,
					   RB_ENABLE, 1);
		if (FUNC4(adev)) {
			if (FUNC5(&adev->psp, PSP_REG_IH_RB_CNTL_RING1,
						ih_rb_cntl)) {
				FUNC0("program IH_RB_CNTL_RING1 failed!\n");
				return;
			}
		} else {
			FUNC3(OSSSYS, 0, mmIH_RB_CNTL_RING1, ih_rb_cntl);
		}
		adev->irq.ih1.enabled = true;
	}

	if (adev->irq.ih2.ring_size) {
		ih_rb_cntl = FUNC2(OSSSYS, 0, mmIH_RB_CNTL_RING2);
		ih_rb_cntl = FUNC1(ih_rb_cntl, IH_RB_CNTL_RING2,
					   RB_ENABLE, 1);
		if (FUNC4(adev)) {
			if (FUNC5(&adev->psp, PSP_REG_IH_RB_CNTL_RING2,
						ih_rb_cntl)) {
				FUNC0("program IH_RB_CNTL_RING2 failed!\n");
				return;
			}
		} else {
			FUNC3(OSSSYS, 0, mmIH_RB_CNTL_RING2, ih_rb_cntl);
		}
		adev->irq.ih2.enabled = true;
	}
}