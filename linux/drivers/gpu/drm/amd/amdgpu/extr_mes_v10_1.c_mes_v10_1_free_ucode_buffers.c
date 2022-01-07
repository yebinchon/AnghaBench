
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ucode_fw_ptr; int ucode_fw_gpu_addr; int ucode_fw_obj; int data_fw_ptr; int data_fw_gpu_addr; int data_fw_obj; } ;
struct amdgpu_device {TYPE_1__ mes; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;

__attribute__((used)) static void mes_v10_1_free_ucode_buffers(struct amdgpu_device *adev)
{
 amdgpu_bo_free_kernel(&adev->mes.data_fw_obj,
         &adev->mes.data_fw_gpu_addr,
         (void **)&adev->mes.data_fw_ptr);

 amdgpu_bo_free_kernel(&adev->mes.ucode_fw_obj,
         &adev->mes.ucode_fw_gpu_addr,
         (void **)&adev->mes.ucode_fw_ptr);
}
