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
 int EINVAL ; 
 int /*<<< orphan*/  SMC_IND_ACCESS_CNTL__AUTO_INCREMENT_IND_0_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmSMC_IND_ACCESS_CNTL ; 
 int /*<<< orphan*/  mmSMC_IND_INDEX_0 ; 

__attribute__((used)) static int FUNC2(struct amdgpu_device *adev,
				   u32 smc_address, u32 limit)
{
	if (smc_address & 3)
		return -EINVAL;
	if ((smc_address + 3) > limit)
		return -EINVAL;

	FUNC0(mmSMC_IND_INDEX_0, smc_address);
	FUNC1(mmSMC_IND_ACCESS_CNTL, 0,
			~SMC_IND_ACCESS_CNTL__AUTO_INCREMENT_IND_0_MASK);

	return 0;
}