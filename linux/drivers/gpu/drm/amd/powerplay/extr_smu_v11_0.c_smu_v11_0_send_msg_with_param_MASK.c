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
typedef  int /*<<< orphan*/  uint16_t ;
struct smu_context {struct amdgpu_device* adev; } ;
struct amdgpu_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MP1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_82 ; 
 int /*<<< orphan*/  mmMP1_SMN_C2PMSG_90 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smu_context*) ; 

__attribute__((used)) static int
FUNC6(struct smu_context *smu, uint16_t msg,
			      uint32_t param)
{

	struct amdgpu_device *adev = smu->adev;
	int ret = 0, index = 0;

	index = FUNC3(smu, msg);
	if (index < 0)
		return index;

	ret = FUNC5(smu);
	if (ret)
		FUNC1("failed send message: %10s (%d) \tparam: 0x%08x response %#x\n",
		       FUNC2(smu, msg), index, param, ret);

	FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_90, 0);

	FUNC0(MP1, 0, mmMP1_SMN_C2PMSG_82, param);

	FUNC4(smu, (uint16_t)index);

	ret = FUNC5(smu);
	if (ret)
		FUNC1("failed send message: %10s (%d) \tparam: 0x%08x response %#x\n",
		       FUNC2(smu, msg), index, param, ret);

	return ret;
}