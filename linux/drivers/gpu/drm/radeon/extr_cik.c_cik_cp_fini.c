
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_cp_compute_fini (struct radeon_device*) ;
 int cik_cp_gfx_fini (struct radeon_device*) ;

__attribute__((used)) static void cik_cp_fini(struct radeon_device *rdev)
{
 cik_cp_gfx_fini(rdev);
 cik_cp_compute_fini(rdev);
}
