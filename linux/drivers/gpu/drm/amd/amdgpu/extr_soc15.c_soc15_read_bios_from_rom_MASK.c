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
struct amdgpu_device {int flags; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 int AMD_IS_APU ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMUIO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmROM_DATA ; 
 int /*<<< orphan*/  mmROM_INDEX ; 

__attribute__((used)) static bool FUNC4(struct amdgpu_device *adev,
				     u8 *bios, u32 length_bytes)
{
	u32 *dw_ptr;
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

	/* set rom index to 0 */
	FUNC3(FUNC2(SMUIO, 0, mmROM_INDEX), 0);
	/* read out the rom data */
	for (i = 0; i < length_dw; i++)
		dw_ptr[i] = FUNC1(FUNC2(SMUIO, 0, mmROM_DATA));

	return true;
}