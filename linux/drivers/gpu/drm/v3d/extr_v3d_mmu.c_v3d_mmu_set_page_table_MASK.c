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
struct v3d_dev {int pt_paddr; int mmu_scratch_paddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  V3D_MMUC_CONTROL ; 
 int V3D_MMUC_CONTROL_ENABLE ; 
 int /*<<< orphan*/  V3D_MMU_CTL ; 
 int V3D_MMU_CTL_CAP_EXCEEDED_ABORT ; 
 int V3D_MMU_CTL_CAP_EXCEEDED_INT ; 
 int V3D_MMU_CTL_ENABLE ; 
 int V3D_MMU_CTL_PT_INVALID_ABORT ; 
 int V3D_MMU_CTL_PT_INVALID_ENABLE ; 
 int V3D_MMU_CTL_PT_INVALID_INT ; 
 int V3D_MMU_CTL_WRITE_VIOLATION_ABORT ; 
 int V3D_MMU_CTL_WRITE_VIOLATION_INT ; 
 int /*<<< orphan*/  V3D_MMU_ILLEGAL_ADDR ; 
 int V3D_MMU_ILLEGAL_ADDR_ENABLE ; 
 int V3D_MMU_PAGE_SHIFT ; 
 int /*<<< orphan*/  V3D_MMU_PT_PA_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct v3d_dev*) ; 

int FUNC2(struct v3d_dev *v3d)
{
	FUNC0(V3D_MMU_PT_PA_BASE, v3d->pt_paddr >> V3D_MMU_PAGE_SHIFT);
	FUNC0(V3D_MMU_CTL,
		  V3D_MMU_CTL_ENABLE |
		  V3D_MMU_CTL_PT_INVALID_ENABLE |
		  V3D_MMU_CTL_PT_INVALID_ABORT |
		  V3D_MMU_CTL_PT_INVALID_INT |
		  V3D_MMU_CTL_WRITE_VIOLATION_ABORT |
		  V3D_MMU_CTL_WRITE_VIOLATION_INT |
		  V3D_MMU_CTL_CAP_EXCEEDED_ABORT |
		  V3D_MMU_CTL_CAP_EXCEEDED_INT);
	FUNC0(V3D_MMU_ILLEGAL_ADDR,
		  (v3d->mmu_scratch_paddr >> V3D_MMU_PAGE_SHIFT) |
		  V3D_MMU_ILLEGAL_ADDR_ENABLE);
	FUNC0(V3D_MMUC_CONTROL, V3D_MMUC_CONTROL_ENABLE);

	return FUNC1(v3d);
}