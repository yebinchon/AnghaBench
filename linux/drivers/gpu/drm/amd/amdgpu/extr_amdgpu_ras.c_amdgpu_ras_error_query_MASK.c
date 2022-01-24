#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int block; } ;
struct ras_query_if {TYPE_7__ head; int /*<<< orphan*/  ce_count; int /*<<< orphan*/  ue_count; } ;
struct TYPE_13__ {int /*<<< orphan*/  ue_count; int /*<<< orphan*/  ce_count; } ;
struct ras_manager {TYPE_6__ err_data; } ;
struct ras_err_data {scalar_t__ ue_count; scalar_t__ ce_count; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {TYPE_3__* funcs; } ;
struct TYPE_9__ {TYPE_1__* funcs; } ;
struct amdgpu_device {int /*<<< orphan*/  dev; TYPE_5__* mmhub_funcs; TYPE_4__ gfx; TYPE_2__ umc; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* query_ras_error_count ) (struct amdgpu_device*,struct ras_err_data*) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  (* query_ras_error_count ) (struct amdgpu_device*,struct ras_err_data*) ;} ;
struct TYPE_8__ {int /*<<< orphan*/  (* query_ras_error_address ) (struct amdgpu_device*,struct ras_err_data*) ;int /*<<< orphan*/  (* query_ras_error_count ) (struct amdgpu_device*,struct ras_err_data*) ;} ;

/* Variables and functions */
#define  AMDGPU_RAS_BLOCK__GFX 130 
#define  AMDGPU_RAS_BLOCK__MMHUB 129 
#define  AMDGPU_RAS_BLOCK__UMC 128 
 int EINVAL ; 
 struct ras_manager* FUNC0 (struct amdgpu_device*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,struct ras_err_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,struct ras_err_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct ras_err_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,struct ras_err_data*) ; 

int FUNC7(struct amdgpu_device *adev,
		struct ras_query_if *info)
{
	struct ras_manager *obj = FUNC0(adev, &info->head);
	struct ras_err_data err_data = {0, 0, 0, NULL};

	if (!obj)
		return -EINVAL;

	switch (info->head.block) {
	case AMDGPU_RAS_BLOCK__UMC:
		if (adev->umc.funcs->query_ras_error_count)
			adev->umc.funcs->query_ras_error_count(adev, &err_data);
		/* umc query_ras_error_address is also responsible for clearing
		 * error status
		 */
		if (adev->umc.funcs->query_ras_error_address)
			adev->umc.funcs->query_ras_error_address(adev, &err_data);
		break;
	case AMDGPU_RAS_BLOCK__GFX:
		if (adev->gfx.funcs->query_ras_error_count)
			adev->gfx.funcs->query_ras_error_count(adev, &err_data);
		break;
	case AMDGPU_RAS_BLOCK__MMHUB:
		if (adev->mmhub_funcs->query_ras_error_count)
			adev->mmhub_funcs->query_ras_error_count(adev, &err_data);
		break;
	default:
		break;
	}

	obj->err_data.ue_count += err_data.ue_count;
	obj->err_data.ce_count += err_data.ce_count;

	info->ue_count = obj->err_data.ue_count;
	info->ce_count = obj->err_data.ce_count;

	if (err_data.ce_count)
		FUNC1(adev->dev, "%ld correctable errors detected in %s block\n",
			 obj->err_data.ce_count, FUNC2(info->head.block));
	if (err_data.ue_count)
		FUNC1(adev->dev, "%ld uncorrectable errors detected in %s block\n",
			 obj->err_data.ue_count, FUNC2(info->head.block));

	return 0;
}