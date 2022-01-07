
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int objects; } ;
struct radeon_device {TYPE_1__ gem; } ;


 int INIT_LIST_HEAD (int *) ;

int radeon_gem_init(struct radeon_device *rdev)
{
 INIT_LIST_HEAD(&rdev->gem.objects);
 return 0;
}
