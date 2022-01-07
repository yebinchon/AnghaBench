
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef int SMU7_Discrete_Ulv ;


 int ci_populate_ulv_level (struct radeon_device*,int *) ;

__attribute__((used)) static int ci_populate_ulv_state(struct radeon_device *rdev,
     SMU7_Discrete_Ulv *ulv_level)
{
 return ci_populate_ulv_level(rdev, ulv_level);
}
