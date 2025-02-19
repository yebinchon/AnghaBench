
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int hw; int valid; } ;
struct amdgpu_ip_block {TYPE_3__ status; TYPE_2__* version; } ;
struct amdgpu_device {int num_ip_blocks; struct amdgpu_ip_block* ip_blocks; } ;
typedef enum amd_ip_block_type { ____Placeholder_amd_ip_block_type } amd_ip_block_type ;
struct TYPE_5__ {int type; TYPE_1__* funcs; } ;
struct TYPE_4__ {int (* hw_init ) (struct amdgpu_device*) ;int name; } ;






 int ARRAY_SIZE (int*) ;
 int DRM_INFO (char*,int ,char*) ;
 int stub1 (struct amdgpu_device*) ;

__attribute__((used)) static int amdgpu_device_ip_reinit_early_sriov(struct amdgpu_device *adev)
{
 int i, r;

 static enum amd_ip_block_type ip_order[] = {
  130,
  131,
  128,
  129,
 };

 for (i = 0; i < ARRAY_SIZE(ip_order); i++) {
  int j;
  struct amdgpu_ip_block *block;

  for (j = 0; j < adev->num_ip_blocks; j++) {
   block = &adev->ip_blocks[j];

   block->status.hw = 0;
   if (block->version->type != ip_order[i] ||
    !block->status.valid)
    continue;

   r = block->version->funcs->hw_init(adev);
   DRM_INFO("RE-INIT-early: %s %s\n", block->version->funcs->name, r?"failed":"succeeded");
   if (r)
    return r;
   block->status.hw = 1;
  }
 }

 return 0;
}
