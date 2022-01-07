
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ta_ras_trigger_error_input {int value; int address; int sub_block_index; int inject_error_type; int block_id; } ;
struct ras_manager {int dummy; } ;
struct TYPE_6__ {int block; int sub_block_index; int type; } ;
struct ras_inject_if {TYPE_3__ head; int value; int address; } ;
struct TYPE_5__ {TYPE_1__* funcs; } ;
struct amdgpu_device {int psp; TYPE_2__ gfx; } ;
struct TYPE_4__ {int (* ras_error_inject ) (struct amdgpu_device*,struct ras_inject_if*) ;} ;





 int DRM_ERROR (char*,int ,int) ;
 int DRM_INFO (char*,int ) ;
 int EINVAL ;
 int amdgpu_ras_block_to_ta (int) ;
 int amdgpu_ras_error_to_ta (int ) ;
 struct ras_manager* amdgpu_ras_find_obj (struct amdgpu_device*,TYPE_3__*) ;
 int psp_ras_trigger_error (int *,struct ta_ras_trigger_error_input*) ;
 int ras_block_str (int) ;
 int stub1 (struct amdgpu_device*,struct ras_inject_if*) ;

int amdgpu_ras_error_inject(struct amdgpu_device *adev,
  struct ras_inject_if *info)
{
 struct ras_manager *obj = amdgpu_ras_find_obj(adev, &info->head);
 struct ta_ras_trigger_error_input block_info = {
  .block_id = amdgpu_ras_block_to_ta(info->head.block),
  .inject_error_type = amdgpu_ras_error_to_ta(info->head.type),
  .sub_block_index = info->head.sub_block_index,
  .address = info->address,
  .value = info->value,
 };
 int ret = 0;

 if (!obj)
  return -EINVAL;

 switch (info->head.block) {
 case 130:
  if (adev->gfx.funcs->ras_error_inject)
   ret = adev->gfx.funcs->ras_error_inject(adev, info);
  else
   ret = -EINVAL;
  break;
 case 128:
 case 129:
  ret = psp_ras_trigger_error(&adev->psp, &block_info);
  break;
 default:
  DRM_INFO("%s error injection is not supported yet\n",
    ras_block_str(info->head.block));
  ret = -EINVAL;
 }

 if (ret)
  DRM_ERROR("RAS ERROR: inject %s error failed ret %d\n",
    ras_block_str(info->head.block),
    ret);

 return ret;
}
