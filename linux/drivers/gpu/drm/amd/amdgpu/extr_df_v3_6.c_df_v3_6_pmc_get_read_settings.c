
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int df_v3_6_pmc_get_addr (struct amdgpu_device*,int ,int ,int *,int *) ;

__attribute__((used)) static void df_v3_6_pmc_get_read_settings(struct amdgpu_device *adev,
       uint64_t config,
       uint32_t *lo_base_addr,
       uint32_t *hi_base_addr)
{
 df_v3_6_pmc_get_addr(adev, config, 0, lo_base_addr, hi_base_addr);
}
