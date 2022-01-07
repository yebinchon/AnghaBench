
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct radeon_device {int dummy; } ;
struct radeon_cac_leakage_table {size_t count; TYPE_1__* entries; } ;
struct TYPE_2__ {int vddc; } ;


 int ci_patch_with_vddc_leakage (struct radeon_device*,int *) ;

__attribute__((used)) static void ci_patch_cac_leakage_table_with_vddc_leakage(struct radeon_device *rdev,
        struct radeon_cac_leakage_table *table)
{
 u32 i;

 if (table) {
  for (i = 0; i < table->count; i++)
   ci_patch_with_vddc_leakage(rdev, &table->entries[i].vddc);
 }
}
