
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {TYPE_1__* vce_fw; } ;
struct TYPE_2__ {scalar_t__ size; } ;


 scalar_t__ VCE_V2_0_DATA_SIZE ;
 scalar_t__ VCE_V2_0_FW_SIZE ;
 scalar_t__ VCE_V2_0_STACK_SIZE ;
 int WARN_ON (int) ;

unsigned vce_v2_0_bo_size(struct radeon_device *rdev)
{
 WARN_ON(rdev->vce_fw->size > VCE_V2_0_FW_SIZE);
 return VCE_V2_0_FW_SIZE + VCE_V2_0_STACK_SIZE + VCE_V2_0_DATA_SIZE;
}
