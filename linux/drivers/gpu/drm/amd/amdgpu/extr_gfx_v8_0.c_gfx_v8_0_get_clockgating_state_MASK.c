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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_GFX_CGCG ; 
 int AMD_CG_SUPPORT_GFX_CGLS ; 
 int AMD_CG_SUPPORT_GFX_CGTS ; 
 int AMD_CG_SUPPORT_GFX_CGTS_LS ; 
 int AMD_CG_SUPPORT_GFX_CP_LS ; 
 int AMD_CG_SUPPORT_GFX_MGCG ; 
 int AMD_CG_SUPPORT_GFX_MGLS ; 
 int AMD_CG_SUPPORT_GFX_RLC_LS ; 
 int CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK ; 
 int CGTS_SM_CTRL_REG__OVERRIDE_MASK ; 
 int CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK ; 
 int RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK ; 
 int RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK ; 
 int RLC_CGTT_MGCG_OVERRIDE__CPF_MASK ; 
 int RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  mmCGTS_SM_CTRL_REG ; 
 int /*<<< orphan*/  mmCP_MEM_SLP_CNTL ; 
 int /*<<< orphan*/  mmRLC_CGCG_CGLS_CTRL ; 
 int /*<<< orphan*/  mmRLC_CGTT_MGCG_OVERRIDE ; 
 int /*<<< orphan*/  mmRLC_MEM_SLP_CNTL ; 

__attribute__((used)) static void FUNC2(void *handle, u32 *flags)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	int data;

	if (FUNC1(adev))
		*flags = 0;

	/* AMD_CG_SUPPORT_GFX_MGCG */
	data = FUNC0(mmRLC_CGTT_MGCG_OVERRIDE);
	if (!(data & RLC_CGTT_MGCG_OVERRIDE__CPF_MASK))
		*flags |= AMD_CG_SUPPORT_GFX_MGCG;

	/* AMD_CG_SUPPORT_GFX_CGLG */
	data = FUNC0(mmRLC_CGCG_CGLS_CTRL);
	if (data & RLC_CGCG_CGLS_CTRL__CGCG_EN_MASK)
		*flags |= AMD_CG_SUPPORT_GFX_CGCG;

	/* AMD_CG_SUPPORT_GFX_CGLS */
	if (data & RLC_CGCG_CGLS_CTRL__CGLS_EN_MASK)
		*flags |= AMD_CG_SUPPORT_GFX_CGLS;

	/* AMD_CG_SUPPORT_GFX_CGTS */
	data = FUNC0(mmCGTS_SM_CTRL_REG);
	if (!(data & CGTS_SM_CTRL_REG__OVERRIDE_MASK))
		*flags |= AMD_CG_SUPPORT_GFX_CGTS;

	/* AMD_CG_SUPPORT_GFX_CGTS_LS */
	if (!(data & CGTS_SM_CTRL_REG__LS_OVERRIDE_MASK))
		*flags |= AMD_CG_SUPPORT_GFX_CGTS_LS;

	/* AMD_CG_SUPPORT_GFX_RLC_LS */
	data = FUNC0(mmRLC_MEM_SLP_CNTL);
	if (data & RLC_MEM_SLP_CNTL__RLC_MEM_LS_EN_MASK)
		*flags |= AMD_CG_SUPPORT_GFX_RLC_LS | AMD_CG_SUPPORT_GFX_MGLS;

	/* AMD_CG_SUPPORT_GFX_CP_LS */
	data = FUNC0(mmCP_MEM_SLP_CNTL);
	if (data & CP_MEM_SLP_CNTL__CP_MEM_LS_EN_MASK)
		*flags |= AMD_CG_SUPPORT_GFX_CP_LS | AMD_CG_SUPPORT_GFX_MGLS;
}