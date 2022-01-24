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
struct ras_common_if {int block; int const type; int /*<<< orphan*/  name; int /*<<< orphan*/  sub_block_index; } ;
struct amdgpu_ras {int features; } ;
struct amdgpu_device {int dummy; } ;
typedef  enum amdgpu_ras_error_type { ____Placeholder_amdgpu_ras_error_type } amdgpu_ras_error_type ;

/* Variables and functions */
 int AMDGPU_RAS_BLOCK_COUNT ; 
 int AMDGPU_RAS_ERROR__NONE ; 
 scalar_t__ FUNC0 (struct amdgpu_device*,struct ras_common_if*,int) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*,struct ras_common_if*,int) ; 
 struct amdgpu_ras* FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct amdgpu_device *adev,
		bool bypass)
{
	struct amdgpu_ras *con = FUNC2(adev);
	int ras_block_count = AMDGPU_RAS_BLOCK_COUNT;
	int i;
	const enum amdgpu_ras_error_type default_ras_type =
		AMDGPU_RAS_ERROR__NONE;

	for (i = 0; i < ras_block_count; i++) {
		struct ras_common_if head = {
			.block = i,
			.type = default_ras_type,
			.sub_block_index = 0,
		};
		FUNC4(head.name, FUNC3(i));
		if (bypass) {
			/*
			 * bypass psp. vbios enable ras for us.
			 * so just create the obj
			 */
			if (FUNC0(adev, &head, 1))
				break;
		} else {
			if (FUNC1(adev, &head, 1))
				break;
		}
	}

	return con->features;
}