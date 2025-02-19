
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sumo_vid_mapping_table {size_t num_entries; TYPE_1__* entries; } ;
struct radeon_device {int dummy; } ;
struct TYPE_2__ {size_t vid_2bit; size_t vid_7bit; } ;



u32 sumo_convert_vid2_to_vid7(struct radeon_device *rdev,
         struct sumo_vid_mapping_table *vid_mapping_table,
         u32 vid_2bit)
{
 u32 i;

 for (i = 0; i < vid_mapping_table->num_entries; i++) {
  if (vid_mapping_table->entries[i].vid_2bit == vid_2bit)
   return vid_mapping_table->entries[i].vid_7bit;
 }

 return vid_mapping_table->entries[vid_mapping_table->num_entries - 1].vid_7bit;
}
