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
typedef  int /*<<< orphan*/  uint16_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_90 ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smu_context*) ; 

__attribute__((used)) static int FUNC5(struct smu_context *smu, uint16_t msg)
{
	struct amdgpu_device *adev = smu->adev;
	int ret = 0, index = 0;

	index = FUNC2(smu, msg);
	if (index < 0)
		return index;

	FUNC4(smu);

	FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

	FUNC3(smu, (uint16_t)index);

	ret = FUNC4(smu);

	if (ret)
		FUNC1("Failed to send message 0x%x, response 0x%x\n", index,
		       ret);

	return ret;

}