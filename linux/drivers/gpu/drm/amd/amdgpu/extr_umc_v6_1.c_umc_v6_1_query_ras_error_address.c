
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int dummy; } ;


 int amdgpu_umc_for_each_channel (int ) ;
 int umc_v6_1_query_error_address ;

__attribute__((used)) static void umc_v6_1_query_ras_error_address(struct amdgpu_device *adev,
          void *ras_error_status)
{
 amdgpu_umc_for_each_channel(umc_v6_1_query_error_address);
}
