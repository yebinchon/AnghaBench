
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ras_err_data {int dummy; } ;
struct amdgpu_iv_entry {int dummy; } ;
struct TYPE_6__ {TYPE_2__* funcs; } ;
struct TYPE_4__ {int dev; } ;
struct amdgpu_device {TYPE_3__ gfx; TYPE_1__ kfd; } ;
struct TYPE_5__ {int (* query_ras_error_count ) (struct amdgpu_device*,struct ras_err_data*) ;} ;


 int AMDGPU_RAS_SUCCESS ;
 int amdgpu_ras_reset_gpu (struct amdgpu_device*,int ) ;
 int kgd2kfd_set_sram_ecc_flag (int ) ;
 int stub1 (struct amdgpu_device*,struct ras_err_data*) ;

__attribute__((used)) static int gfx_v9_0_process_ras_data_cb(struct amdgpu_device *adev,
  struct ras_err_data *err_data,
  struct amdgpu_iv_entry *entry)
{

 kgd2kfd_set_sram_ecc_flag(adev->kfd.dev);
 if (adev->gfx.funcs->query_ras_error_count)
  adev->gfx.funcs->query_ras_error_count(adev, err_data);
 amdgpu_ras_reset_gpu(adev, 0);
 return AMDGPU_RAS_SUCCESS;
}
