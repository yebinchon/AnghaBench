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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GRBM_GFX_CNTL ; 
 int /*<<< orphan*/  MEID ; 
 int /*<<< orphan*/  PIPEID ; 
 int /*<<< orphan*/  QUEUEID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VMID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmGRBM_GFX_CNTL ; 

void FUNC2(struct amdgpu_device *adev,
		     u32 me, u32 pipe, u32 queue, u32 vmid)
{
	u32 grbm_gfx_cntl = 0;
	grbm_gfx_cntl = FUNC0(grbm_gfx_cntl, GRBM_GFX_CNTL, PIPEID, pipe);
	grbm_gfx_cntl = FUNC0(grbm_gfx_cntl, GRBM_GFX_CNTL, MEID, me);
	grbm_gfx_cntl = FUNC0(grbm_gfx_cntl, GRBM_GFX_CNTL, VMID, vmid);
	grbm_gfx_cntl = FUNC0(grbm_gfx_cntl, GRBM_GFX_CNTL, QUEUEID, queue);

	FUNC1(GC, 0, mmGRBM_GFX_CNTL, grbm_gfx_cntl);
}