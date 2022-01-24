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
typedef  int uint32_t ;
struct smu_baco_context {int platform_support; int /*<<< orphan*/  mutex; } ;
struct smu_context {struct smu_baco_context smu_baco; struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NBIO ; 
 int RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMU_FEATURE_BACO_BIT ; 
 int /*<<< orphan*/  mmRCC_BIF_STRAP0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smu_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(struct smu_context *smu)
{
	struct amdgpu_device *adev = smu->adev;
	struct smu_baco_context *smu_baco = &smu->smu_baco;
	uint32_t val;
	bool baco_support;

	FUNC1(&smu_baco->mutex);
	baco_support = smu_baco->platform_support;
	FUNC2(&smu_baco->mutex);

	if (!baco_support)
		return false;

	if (!FUNC3(smu, SMU_FEATURE_BACO_BIT))
		return false;

	val = FUNC0(NBIO, 0, mmRCC_BIF_STRAP0);
	if (val & RCC_BIF_STRAP0__STRAP_PX_CAPABLE_MASK)
		return true;

	return false;
}