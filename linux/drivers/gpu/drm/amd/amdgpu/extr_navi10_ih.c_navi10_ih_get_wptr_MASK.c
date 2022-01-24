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
struct amdgpu_ih_ring {int ptr_mask; int rptr; int /*<<< orphan*/ * wptr_cpu; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IH_RB_CNTL ; 
 int /*<<< orphan*/  IH_RB_WPTR ; 
 int /*<<< orphan*/  OSSSYS ; 
 int /*<<< orphan*/  RB_OVERFLOW ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WPTR_OVERFLOW_CLEAR ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmIH_RB_CNTL ; 
 int /*<<< orphan*/  mmIH_RB_WPTR ; 

__attribute__((used)) static u32 FUNC7(struct amdgpu_device *adev,
			      struct amdgpu_ih_ring *ih)
{
	u32 wptr, reg, tmp;

	wptr = FUNC6(*ih->wptr_cpu);

	if (!FUNC0(wptr, IH_RB_WPTR, RB_OVERFLOW))
		goto out;

	reg = FUNC3(OSSSYS, 0, mmIH_RB_WPTR);
	wptr = FUNC2(reg);
	if (!FUNC0(wptr, IH_RB_WPTR, RB_OVERFLOW))
		goto out;
	wptr = FUNC1(wptr, IH_RB_WPTR, RB_OVERFLOW, 0);

	/* When a ring buffer overflow happen start parsing interrupt
	 * from the last not overwritten vector (wptr + 32). Hopefully
	 * this should allow us to catch up.
	 */
	tmp = (wptr + 32) & ih->ptr_mask;
	FUNC5(adev->dev, "IH ring buffer overflow "
		 "(0x%08X, 0x%08X, 0x%08X)\n",
		 wptr, ih->rptr, tmp);
	ih->rptr = tmp;

	reg = FUNC3(OSSSYS, 0, mmIH_RB_CNTL);
	tmp = FUNC2(reg);
	tmp = FUNC1(tmp, IH_RB_CNTL, WPTR_OVERFLOW_CLEAR, 1);
	FUNC4(reg, tmp);
out:
	return (wptr & ih->ptr_mask);
}