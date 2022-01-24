#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ta_ras_trigger_error_input {int /*<<< orphan*/  value; int /*<<< orphan*/  address; int /*<<< orphan*/  inject_error_type; int /*<<< orphan*/  sub_block_index; int /*<<< orphan*/  block_id; int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {size_t sub_block_index; int type; int /*<<< orphan*/  block; } ;
struct ras_inject_if {int /*<<< orphan*/  value; int /*<<< orphan*/  address; TYPE_1__ head; } ;
struct amdgpu_device {scalar_t__ asic_type; int /*<<< orphan*/  grbm_idx_mutex; int /*<<< orphan*/  psp; } ;
struct TYPE_5__ {int hw_supported_error_type; int sw_supported_error_type; int /*<<< orphan*/  ta_subblock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__*) ; 
 scalar_t__ CHIP_VEGA20 ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct ta_ras_trigger_error_input*) ; 
 TYPE_2__* ras_gfx_subblocks ; 

__attribute__((used)) static int FUNC7(struct amdgpu_device *adev,
				     void *inject_if)
{
	struct ras_inject_if *info = (struct ras_inject_if *)inject_if;
	int ret;
	struct ta_ras_trigger_error_input block_info = { 0 };

	if (adev->asic_type != CHIP_VEGA20)
		return -EINVAL;

	if (info->head.sub_block_index >= FUNC0(ras_gfx_subblocks))
		return -EINVAL;

	if (!ras_gfx_subblocks[info->head.sub_block_index].name)
		return -EPERM;

	if (!(ras_gfx_subblocks[info->head.sub_block_index].hw_supported_error_type &
	      info->head.type)) {
		FUNC1("GFX Subblock %s, hardware do not support type 0x%x\n",
			ras_gfx_subblocks[info->head.sub_block_index].name,
			info->head.type);
		return -EPERM;
	}

	if (!(ras_gfx_subblocks[info->head.sub_block_index].sw_supported_error_type &
	      info->head.type)) {
		FUNC1("GFX Subblock %s, driver do not support type 0x%x\n",
			ras_gfx_subblocks[info->head.sub_block_index].name,
			info->head.type);
		return -EPERM;
	}

	block_info.block_id = FUNC2(info->head.block);
	block_info.sub_block_index =
		ras_gfx_subblocks[info->head.sub_block_index].ta_subblock;
	block_info.inject_error_type = FUNC3(info->head.type);
	block_info.address = info->address;
	block_info.value = info->value;

	FUNC4(&adev->grbm_idx_mutex);
	ret = FUNC6(&adev->psp, &block_info);
	FUNC5(&adev->grbm_idx_mutex);

	return ret;
}