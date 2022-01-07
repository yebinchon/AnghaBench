
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max1363_mode {int modemask; } ;
struct max1363_chip_info {int num_modes; size_t* mode_list; } ;


 int MAX1363_MAX_CHANNELS ;
 scalar_t__ bitmap_subset (unsigned long const*,int ,int ) ;
 struct max1363_mode const* max1363_mode_table ;

__attribute__((used)) static const struct max1363_mode
*max1363_match_mode(const unsigned long *mask,
 const struct max1363_chip_info *ci)
{
 int i;
 if (mask)
  for (i = 0; i < ci->num_modes; i++)
   if (bitmap_subset(mask,
       max1363_mode_table[ci->mode_list[i]].
       modemask,
       MAX1363_MAX_CHANNELS))
    return &max1363_mode_table[ci->mode_list[i]];
 return ((void*)0);
}
