
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct cs_section_def* cs_data; } ;
struct radeon_device {TYPE_1__ rlc; } ;
struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {scalar_t__ reg_count; int * extent; } ;


 scalar_t__ SECT_CONTEXT ;

u32 cik_get_csb_size(struct radeon_device *rdev)
{
 u32 count = 0;
 const struct cs_section_def *sect = ((void*)0);
 const struct cs_extent_def *ext = ((void*)0);

 if (rdev->rlc.cs_data == ((void*)0))
  return 0;


 count += 2;

 count += 3;

 for (sect = rdev->rlc.cs_data; sect->section != ((void*)0); ++sect) {
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
