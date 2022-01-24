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
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  UVD ; 
 int /*<<< orphan*/  UVD_POWER_STATUS__UVD_PG_MODE_MASK ; 
 int UVD_POWER_STATUS__UVD_POWER_STATUS_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_POWER_STATUS ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR2 ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR2 ; 

__attribute__((used)) static int FUNC4(struct amdgpu_device *adev)
{
	int ret_code = 0;
	uint32_t tmp;

	/* Wait for power status to be 1 */
	FUNC2(UVD, 0, mmUVD_POWER_STATUS, 1,
		UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);

	/* wait for read ptr to be equal to write ptr */
	tmp = FUNC0(UVD, 0, mmUVD_RB_WPTR);
	FUNC2(UVD, 0, mmUVD_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

	tmp = FUNC0(UVD, 0, mmUVD_RB_WPTR2);
	FUNC2(UVD, 0, mmUVD_RB_RPTR2, tmp, 0xFFFFFFFF, ret_code);

	tmp = FUNC0(UVD, 0, mmUVD_JRBC_RB_WPTR);
	FUNC2(UVD, 0, mmUVD_JRBC_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

	tmp = FUNC0(UVD, 0, mmUVD_RBC_RB_WPTR) & 0x7FFFFFFF;
	FUNC2(UVD, 0, mmUVD_RBC_RB_RPTR, tmp, 0xFFFFFFFF, ret_code);

	FUNC2(UVD, 0, mmUVD_POWER_STATUS, 1,
		UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);

	/* disable dynamic power gating mode */
	FUNC3(FUNC1(UVD, 0, mmUVD_POWER_STATUS), 0,
			~UVD_POWER_STATUS__UVD_PG_MODE_MASK);

	return 0;
}