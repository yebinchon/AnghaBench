
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ni_power_info {int dummy; } ;
struct TYPE_3__ {struct ni_power_info* priv; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct amdgpu_device {TYPE_2__ pm; } ;



__attribute__((used)) static struct ni_power_info *ni_get_pi(struct amdgpu_device *adev)
{
 struct ni_power_info *pi = adev->pm.dpm.priv;

 return pi;
}
