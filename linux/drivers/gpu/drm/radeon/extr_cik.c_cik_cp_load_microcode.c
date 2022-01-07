
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_cp_compute_load_microcode (struct radeon_device*) ;
 int cik_cp_gfx_load_microcode (struct radeon_device*) ;

__attribute__((used)) static int cik_cp_load_microcode(struct radeon_device *rdev)
{
 int r;

 r = cik_cp_gfx_load_microcode(rdev);
 if (r)
  return r;
 r = cik_cp_compute_load_microcode(rdev);
 if (r)
  return r;

 return 0;
}
