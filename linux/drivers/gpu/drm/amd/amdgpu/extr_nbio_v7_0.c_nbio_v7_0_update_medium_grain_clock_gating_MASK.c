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
typedef  int /*<<< orphan*/  uint32_t ;
struct amdgpu_device {int cg_flags; } ;

/* Variables and functions */
 int AMD_CG_SUPPORT_BIF_MGCG ; 
 int /*<<< orphan*/  NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK ; 
 int /*<<< orphan*/  SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK ; 
 int /*<<< orphan*/  ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smnNBIF_MGCG_CTRL_LCLK ; 

__attribute__((used)) static void FUNC4(struct amdgpu_device *adev,
						       bool enable)
{
	uint32_t def, data;

	/* NBIF_MGCG_CTRL_LCLK */
	def = data = FUNC0(smnNBIF_MGCG_CTRL_LCLK);

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
		data |= NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK;
	else
		data &= ~NBIF_MGCG_CTRL_LCLK__NBIF_MGCG_EN_LCLK_MASK;

	if (def != data)
		FUNC1(smnNBIF_MGCG_CTRL_LCLK, data);

	/* SYSHUB_MGCG_CTRL_SOCCLK */
	def = data = FUNC2(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK);

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
		data |= SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK;
	else
		data &= ~SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SOCCLK__SYSHUB_MGCG_EN_SOCCLK_MASK;

	if (def != data)
		FUNC3(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SOCCLK, data);

	/* SYSHUB_MGCG_CTRL_SHUBCLK */
	def = data = FUNC2(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK);

	if (enable && (adev->cg_flags & AMD_CG_SUPPORT_BIF_MGCG))
		data |= SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK;
	else
		data &= ~SYSHUB_MMREG_DIRECT_SYSHUB_MGCG_CTRL_SHUBCLK__SYSHUB_MGCG_EN_SHUBCLK_MASK;

	if (def != data)
		FUNC3(adev, ixSYSHUB_MMREG_IND_SYSHUB_MGCG_CTRL_SHUBCLK, data);
}