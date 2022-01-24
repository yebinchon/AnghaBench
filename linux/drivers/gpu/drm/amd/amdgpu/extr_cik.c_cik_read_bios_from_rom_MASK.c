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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct amdgpu_device {int flags; int /*<<< orphan*/  smc_idx_lock; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int AMD_IS_APU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ixROM_DATA ; 
 int /*<<< orphan*/  ixROM_INDEX ; 
 int /*<<< orphan*/  mmSMC_IND_DATA_0 ; 
 int /*<<< orphan*/  mmSMC_IND_INDEX_0 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static bool FUNC5(struct amdgpu_device *adev,
				   u8 *bios, u32 length_bytes)
{
	u32 *dw_ptr;
	unsigned long flags;
	u32 i, length_dw;

	if (bios == NULL)
		return false;
	if (length_bytes == 0)
		return false;
	/* APU vbios image is part of sbios image */
	if (adev->flags & AMD_IS_APU)
		return false;

	dw_ptr = (u32 *)bios;
	length_dw = FUNC0(length_bytes, 4) / 4;
	/* take the smc lock since we are using the smc index */
	FUNC3(&adev->smc_idx_lock, flags);
	/* set rom index to 0 */
	FUNC2(mmSMC_IND_INDEX_0, ixROM_INDEX);
	FUNC2(mmSMC_IND_DATA_0, 0);
	/* set index to data for continous read */
	FUNC2(mmSMC_IND_INDEX_0, ixROM_DATA);
	for (i = 0; i < length_dw; i++)
		dw_ptr[i] = FUNC1(mmSMC_IND_DATA_0);
	FUNC4(&adev->smc_idx_lock, flags);

	return true;
}