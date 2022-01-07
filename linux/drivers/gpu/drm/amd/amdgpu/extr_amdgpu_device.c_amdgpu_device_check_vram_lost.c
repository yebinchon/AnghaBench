
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct amdgpu_device {int reset_magic; TYPE_1__ gart; } ;


 int AMDGPU_RESET_MAGIC_NUM ;
 int memcmp (int ,int ,int ) ;

__attribute__((used)) static bool amdgpu_device_check_vram_lost(struct amdgpu_device *adev)
{
 return !!memcmp(adev->gart.ptr, adev->reset_magic,
   AMDGPU_RESET_MAGIC_NUM);
}
