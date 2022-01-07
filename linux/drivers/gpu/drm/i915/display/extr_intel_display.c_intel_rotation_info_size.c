
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rotation_info {TYPE_1__* plane; } ;
struct TYPE_2__ {unsigned int width; unsigned int height; } ;


 int ARRAY_SIZE (TYPE_1__*) ;

unsigned int intel_rotation_info_size(const struct intel_rotation_info *rot_info)
{
 unsigned int size = 0;
 int i;

 for (i = 0 ; i < ARRAY_SIZE(rot_info->plane); i++)
  size += rot_info->plane[i].width * rot_info->plane[i].height;

 return size;
}
