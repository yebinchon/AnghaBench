
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_cp_compute_resume (struct radeon_device*) ;
 int cik_cp_gfx_resume (struct radeon_device*) ;
 int cik_cp_load_microcode (struct radeon_device*) ;
 int cik_enable_gui_idle_interrupt (struct radeon_device*,int) ;

__attribute__((used)) static int cik_cp_resume(struct radeon_device *rdev)
{
 int r;

 cik_enable_gui_idle_interrupt(rdev, 0);

 r = cik_cp_load_microcode(rdev);
 if (r)
  return r;

 r = cik_cp_gfx_resume(rdev);
 if (r)
  return r;
 r = cik_cp_compute_resume(rdev);
 if (r)
  return r;

 cik_enable_gui_idle_interrupt(rdev, 1);

 return 0;
}
