
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_remapped_info {TYPE_1__* plane; } ;
struct TYPE_2__ {unsigned int width; unsigned int height; } ;


 int ARRAY_SIZE (TYPE_1__*) ;

unsigned int intel_remapped_info_size(const struct intel_remapped_info *rem_info)
{
 unsigned int size = 0;
 int i;

 for (i = 0 ; i < ARRAY_SIZE(rem_info->plane); i++)
  size += rem_info->plane[i].width * rem_info->plane[i].height;

 return size;
}
