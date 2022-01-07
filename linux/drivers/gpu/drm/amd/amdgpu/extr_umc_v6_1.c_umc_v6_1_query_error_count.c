
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ras_err_data {int ue_count; int ce_count; } ;
struct amdgpu_device {int dummy; } ;


 int umc_v6_1_querry_uncorrectable_error_count (struct amdgpu_device*,int ,int *) ;
 int umc_v6_1_query_correctable_error_count (struct amdgpu_device*,int ,int *) ;

__attribute__((used)) static void umc_v6_1_query_error_count(struct amdgpu_device *adev,
        struct ras_err_data *err_data, uint32_t umc_reg_offset,
        uint32_t channel_index)
{
 umc_v6_1_query_correctable_error_count(adev, umc_reg_offset,
         &(err_data->ce_count));
 umc_v6_1_querry_uncorrectable_error_count(adev, umc_reg_offset,
        &(err_data->ue_count));
}
