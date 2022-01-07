
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cs_section_def {int dummy; } ;
struct TYPE_3__ {struct cs_section_def* cs_data; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int amdgpu_gfx_rlc_init_csb (struct amdgpu_device*) ;
 struct cs_section_def* gfx10_cs_data ;

__attribute__((used)) static int gfx_v10_0_rlc_init(struct amdgpu_device *adev)
{
 const struct cs_section_def *cs_data;
 int r;

 adev->gfx.rlc.cs_data = gfx10_cs_data;

 cs_data = adev->gfx.rlc.cs_data;

 if (cs_data) {

  r = amdgpu_gfx_rlc_init_csb(adev);
  if (r)
   return r;
 }

 return 0;
}
