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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CG_FDO_CTRL0 ; 
 int /*<<< orphan*/  CG_FDO_CTRL1 ; 
 int EINVAL ; 
 int /*<<< orphan*/  FDO_PWM_MODE_STATIC ; 
 int /*<<< orphan*/  FDO_STATIC_DUTY ; 
 int /*<<< orphan*/  FMAX_DUTY100 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  mmCG_FDO_CTRL0 ; 
 int /*<<< orphan*/  mmCG_FDO_CTRL1 ; 
 scalar_t__ FUNC5 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(struct smu_context *smu, uint32_t speed)
{
	struct amdgpu_device *adev = smu->adev;
	uint32_t duty100, duty;
	uint64_t tmp64;

	if (speed > 100)
		speed = 100;

	if (FUNC5(smu, 0))
		return -EINVAL;

	duty100 = FUNC0(FUNC2(THM, 0, mmCG_FDO_CTRL1),
				CG_FDO_CTRL1, FMAX_DUTY100);
	if (!duty100)
		return -EINVAL;

	tmp64 = (uint64_t)speed * duty100;
	FUNC4(tmp64, 100);
	duty = (uint32_t)tmp64;

	FUNC3(THM, 0, mmCG_FDO_CTRL0,
		     FUNC1(FUNC2(THM, 0, mmCG_FDO_CTRL0),
				   CG_FDO_CTRL0, FDO_STATIC_DUTY, duty));

	return FUNC6(smu, FDO_PWM_MODE_STATIC);
}