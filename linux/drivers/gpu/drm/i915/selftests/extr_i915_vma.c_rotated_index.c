
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_rotation_info {TYPE_1__* plane; } ;
struct TYPE_2__ {unsigned int stride; unsigned int height; unsigned long offset; } ;



__attribute__((used)) static unsigned long rotated_index(const struct intel_rotation_info *r,
       unsigned int n,
       unsigned int x,
       unsigned int y)
{
 return (r->plane[n].stride * (r->plane[n].height - y - 1) +
  r->plane[n].offset + x);
}
