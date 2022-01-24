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
 int /*<<< orphan*/  GC ; 
 int /*<<< orphan*/  GRBM_GFX_INDEX ; 
 int /*<<< orphan*/  INSTANCE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  INSTANCE_INDEX ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SA_BROADCAST_WRITES ; 
 int /*<<< orphan*/  SA_INDEX ; 
 int /*<<< orphan*/  SE_BROADCAST_WRITES ; 
 int /*<<< orphan*/  SE_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 

__attribute__((used)) static void FUNC2(struct amdgpu_device *adev, u32 se_num,
				   u32 sh_num, u32 instance)
{
	u32 data;

	if (instance == 0xffffffff)
		data = FUNC0(0, GRBM_GFX_INDEX,
				     INSTANCE_BROADCAST_WRITES, 1);
	else
		data = FUNC0(0, GRBM_GFX_INDEX, INSTANCE_INDEX,
				     instance);

	if (se_num == 0xffffffff)
		data = FUNC0(data, GRBM_GFX_INDEX, SE_BROADCAST_WRITES,
				     1);
	else
		data = FUNC0(data, GRBM_GFX_INDEX, SE_INDEX, se_num);

	if (sh_num == 0xffffffff)
		data = FUNC0(data, GRBM_GFX_INDEX, SA_BROADCAST_WRITES,
				     1);
	else
		data = FUNC0(data, GRBM_GFX_INDEX, SA_INDEX, sh_num);

	FUNC1(GC, 0, mmGRBM_GFX_INDEX, data);
}