
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_cp_compute_enable (struct radeon_device*,int) ;
 int cik_cp_gfx_enable (struct radeon_device*,int) ;

__attribute__((used)) static void cik_cp_enable(struct radeon_device *rdev, bool enable)
{
 cik_cp_gfx_enable(rdev, enable);
 cik_cp_compute_enable(rdev, enable);
}
