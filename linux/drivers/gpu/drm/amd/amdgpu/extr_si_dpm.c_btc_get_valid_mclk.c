
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int valid_mclk_values; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;


 int btc_find_valid_clock (int *,int ,int ) ;

__attribute__((used)) static u32 btc_get_valid_mclk(struct amdgpu_device *adev,
         u32 max_mclk, u32 requested_mclk)
{
 return btc_find_valid_clock(&adev->pm.dpm.dyn_state.valid_mclk_values,
        max_mclk, requested_mclk);
}
