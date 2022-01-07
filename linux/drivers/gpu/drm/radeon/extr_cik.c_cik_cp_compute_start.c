
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_cp_compute_enable (struct radeon_device*,int) ;

__attribute__((used)) static int cik_cp_compute_start(struct radeon_device *rdev)
{
 cik_cp_compute_enable(rdev, 1);

 return 0;
}
