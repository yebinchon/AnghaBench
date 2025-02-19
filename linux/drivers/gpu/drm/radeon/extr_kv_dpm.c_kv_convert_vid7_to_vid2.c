
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t u32 ;
struct sumo_vid_mapping_table {size_t num_entries; TYPE_5__* entries; } ;
struct radeon_clock_voltage_dependency_table {size_t count; TYPE_4__* entries; } ;
struct TYPE_6__ {struct radeon_clock_voltage_dependency_table vddc_dependency_on_sclk; } ;
struct TYPE_7__ {TYPE_1__ dyn_state; } ;
struct TYPE_8__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_10__ {size_t vid_7bit; size_t vid_2bit; } ;
struct TYPE_9__ {size_t v; } ;



__attribute__((used)) static u32 kv_convert_vid7_to_vid2(struct radeon_device *rdev,
       struct sumo_vid_mapping_table *vid_mapping_table,
       u32 vid_7bit)
{
 struct radeon_clock_voltage_dependency_table *vddc_sclk_table =
  &rdev->pm.dpm.dyn_state.vddc_dependency_on_sclk;
 u32 i;

 if (vddc_sclk_table && vddc_sclk_table->count) {
  for (i = 0; i < vddc_sclk_table->count; i++) {
   if (vddc_sclk_table->entries[i].v == vid_7bit)
    return i;
  }
  return vddc_sclk_table->count - 1;
 } else {
  for (i = 0; i < vid_mapping_table->num_entries; i++) {
   if (vid_mapping_table->entries[i].vid_7bit == vid_7bit)
    return vid_mapping_table->entries[i].vid_2bit;
  }

  return vid_mapping_table->entries[vid_mapping_table->num_entries - 1].vid_2bit;
 }
}
