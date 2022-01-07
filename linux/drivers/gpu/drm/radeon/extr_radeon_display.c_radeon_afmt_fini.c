
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** afmt; } ;
struct radeon_device {TYPE_1__ mode_info; } ;


 int RADEON_MAX_AFMT_BLOCKS ;
 int kfree (int *) ;

__attribute__((used)) static void radeon_afmt_fini(struct radeon_device *rdev)
{
 int i;

 for (i = 0; i < RADEON_MAX_AFMT_BLOCKS; i++) {
  kfree(rdev->mode_info.afmt[i]);
  rdev->mode_info.afmt[i] = ((void*)0);
 }
}
