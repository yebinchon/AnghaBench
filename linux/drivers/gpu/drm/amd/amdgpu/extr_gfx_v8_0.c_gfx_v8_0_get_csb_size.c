
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {scalar_t__ reg_count; int * extent; } ;
struct amdgpu_device {int dummy; } ;


 scalar_t__ SECT_CONTEXT ;
 struct cs_section_def* vi_cs_data ;

__attribute__((used)) static u32 gfx_v8_0_get_csb_size(struct amdgpu_device *adev)
{
 u32 count = 0;
 const struct cs_section_def *sect = ((void*)0);
 const struct cs_extent_def *ext = ((void*)0);


 count += 2;

 count += 3;

 for (sect = vi_cs_data; sect->section != ((void*)0); ++sect) {
  for (ext = sect->section; ext->extent != ((void*)0); ++ext) {
   if (sect->id == SECT_CONTEXT)
    count += 2 + ext->reg_count;
   else
    return 0;
  }
 }

 count += 4;

 count += 2;

 count += 2;

 return count;
}
