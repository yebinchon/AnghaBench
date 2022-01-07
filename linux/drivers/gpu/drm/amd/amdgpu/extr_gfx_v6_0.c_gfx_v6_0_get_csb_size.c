
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {scalar_t__ reg_count; int * extent; } ;
struct TYPE_3__ {struct cs_section_def* cs_data; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 scalar_t__ SECT_CONTEXT ;

__attribute__((used)) static u32 gfx_v6_0_get_csb_size(struct amdgpu_device *adev)
{
 u32 count = 0;
 const struct cs_section_def *sect = ((void*)0);
 const struct cs_extent_def *ext = ((void*)0);

 if (adev->gfx.rlc.cs_data == ((void*)0))
  return 0;


 count += 2;

 count += 3;

 for (sect = adev->gfx.rlc.cs_data; sect->section != ((void*)0); ++sect) {
  for (ext = sect->section; ext->extent != ((void*)0); ++ext) {
   if (sect->id == SECT_CONTEXT)
    count += 2 + ext->reg_count;
   else
    return 0;
  }
 }

 count += 3;

 count += 2;

 count += 2;

 return count;
}
