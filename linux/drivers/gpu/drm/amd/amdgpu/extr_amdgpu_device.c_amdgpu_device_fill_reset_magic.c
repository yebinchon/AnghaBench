
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct amdgpu_device {TYPE_1__ gart; int reset_magic; } ;


 int AMDGPU_RESET_MAGIC_NUM ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void amdgpu_device_fill_reset_magic(struct amdgpu_device *adev)
{
 memcpy(adev->reset_magic, adev->gart.ptr, AMDGPU_RESET_MAGIC_NUM);
}
