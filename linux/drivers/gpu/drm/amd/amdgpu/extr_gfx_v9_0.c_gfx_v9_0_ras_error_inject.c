
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ta_ras_trigger_error_input {int value; int address; int inject_error_type; int sub_block_index; int block_id; int member_0; } ;
struct TYPE_4__ {size_t sub_block_index; int type; int block; } ;
struct ras_inject_if {int value; int address; TYPE_1__ head; } ;
struct amdgpu_device {scalar_t__ asic_type; int grbm_idx_mutex; int psp; } ;
struct TYPE_5__ {int hw_supported_error_type; int sw_supported_error_type; int ta_subblock; int name; } ;


 size_t ARRAY_SIZE (TYPE_2__*) ;
 scalar_t__ CHIP_VEGA20 ;
 int DRM_ERROR (char*,int ,int) ;
 int EINVAL ;
 int EPERM ;
 int amdgpu_ras_block_to_ta (int ) ;
 int amdgpu_ras_error_to_ta (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int psp_ras_trigger_error (int *,struct ta_ras_trigger_error_input*) ;
 TYPE_2__* ras_gfx_subblocks ;

__attribute__((used)) static int gfx_v9_0_ras_error_inject(struct amdgpu_device *adev,
         void *inject_if)
{
 struct ras_inject_if *info = (struct ras_inject_if *)inject_if;
 int ret;
 struct ta_ras_trigger_error_input block_info = { 0 };

 if (adev->asic_type != CHIP_VEGA20)
  return -EINVAL;

 if (info->head.sub_block_index >= ARRAY_SIZE(ras_gfx_subblocks))
  return -EINVAL;

 if (!ras_gfx_subblocks[info->head.sub_block_index].name)
  return -EPERM;

 if (!(ras_gfx_subblocks[info->head.sub_block_index].hw_supported_error_type &
       info->head.type)) {
  DRM_ERROR("GFX Subblock %s, hardware do not support type 0x%x\n",
   ras_gfx_subblocks[info->head.sub_block_index].name,
   info->head.type);
  return -EPERM;
 }

 if (!(ras_gfx_subblocks[info->head.sub_block_index].sw_supported_error_type &
       info->head.type)) {
  DRM_ERROR("GFX Subblock %s, driver do not support type 0x%x\n",
   ras_gfx_subblocks[info->head.sub_block_index].name,
   info->head.type);
  return -EPERM;
 }

 block_info.block_id = amdgpu_ras_block_to_ta(info->head.block);
 block_info.sub_block_index =
  ras_gfx_subblocks[info->head.sub_block_index].ta_subblock;
 block_info.inject_error_type = amdgpu_ras_error_to_ta(info->head.type);
 block_info.address = info->address;
 block_info.value = info->value;

 mutex_lock(&adev->grbm_idx_mutex);
 ret = psp_ras_trigger_error(&adev->psp, &block_info);
 mutex_unlock(&adev->grbm_idx_mutex);

 return ret;
}
