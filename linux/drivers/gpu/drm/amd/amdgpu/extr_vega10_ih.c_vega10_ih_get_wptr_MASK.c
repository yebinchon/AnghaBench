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
struct amdgpu_ih_ring {int ptr_mask; int rptr; int /*<<< orphan*/ * wptr_cpu; } ;
struct TYPE_2__ {struct amdgpu_ih_ring ih2; struct amdgpu_ih_ring ih1; struct amdgpu_ih_ring ih; } ;
struct amdgpu_device {TYPE_1__ irq; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_WPTR ; 
 int /*<<< orphan*/  OSSSYS ; 
 int /*<<< orphan*/  RB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_CLEAR ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_CNTL_RING2 ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_RING1 ; 
 int /*<<< orphan*/  mmIH_RB_WPTR_RING2 ; 

__attribute__((used)) static u32 FUNC8(struct amdgpu_device *adev,
			      struct amdgpu_ih_ring *ih)
{
	u32 wptr, reg, tmp;

	wptr = FUNC7(*ih->wptr_cpu);

	if (!FUNC1(wptr, IH_RB_WPTR, RB_OVERFLOW))
		goto out;

	/* Double check that the overflow wasn't already cleared. */

	if (ih == &adev->irq.ih)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_WPTR);
	else if (ih == &adev->irq.ih1)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_WPTR_RING1);
	else if (ih == &adev->irq.ih2)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_WPTR_RING2);
	else
		FUNC0();

	wptr = FUNC3(reg);
	if (!FUNC1(wptr, IH_RB_WPTR, RB_OVERFLOW))
		goto out;

	wptr = FUNC2(wptr, IH_RB_WPTR, RB_OVERFLOW, 0);

	/* When a ring buffer overflow happen start parsing interrupt
	 * from the last not overwritten vector (wptr + 32). Hopefully
	 * this should allow us to catchup.
	 */
	tmp = (wptr + 32) & ih->ptr_mask;
	FUNC6(adev->dev, "IH ring buffer overflow "
		 "(0x%08X, 0x%08X, 0x%08X)\n",
		 wptr, ih->rptr, tmp);
	ih->rptr = tmp;

	if (ih == &adev->irq.ih)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_CNTL);
	else if (ih == &adev->irq.ih1)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_CNTL_RING1);
	else if (ih == &adev->irq.ih2)
		reg = FUNC4(OSSSYS, 0, mmIH_RB_CNTL_RING2);
	else
		FUNC0();

	tmp = FUNC3(reg);
	tmp = FUNC2(tmp, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
	FUNC5(reg, tmp);

out:
	return (wptr & ih->ptr_mask);
}