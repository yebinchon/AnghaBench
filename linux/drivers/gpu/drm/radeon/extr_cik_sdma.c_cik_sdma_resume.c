
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int cik_sdma_enable (struct radeon_device*,int) ;
 int cik_sdma_gfx_resume (struct radeon_device*) ;
 int cik_sdma_load_microcode (struct radeon_device*) ;
 int cik_sdma_rlc_resume (struct radeon_device*) ;

int cik_sdma_resume(struct radeon_device *rdev)
{
 int r;

 r = cik_sdma_load_microcode(rdev);
 if (r)
  return r;


 cik_sdma_enable(rdev, 1);


 r = cik_sdma_gfx_resume(rdev);
 if (r)
  return r;
 r = cik_sdma_rlc_resume(rdev);
 if (r)
  return r;

 return 0;
}
