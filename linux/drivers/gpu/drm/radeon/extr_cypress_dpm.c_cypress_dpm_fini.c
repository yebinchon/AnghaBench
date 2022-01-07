
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int num_ps; TYPE_3__* priv; TYPE_3__* ps; } ;
struct TYPE_4__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_1__ pm; } ;
struct TYPE_6__ {struct TYPE_6__* ps_priv; } ;


 int kfree (TYPE_3__*) ;

void cypress_dpm_fini(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < rdev->pm.dpm.num_ps; i++) {
  kfree(rdev->pm.dpm.ps[i].ps_priv);
 }
 kfree(rdev->pm.dpm.ps);
 kfree(rdev->pm.dpm.priv);
}
