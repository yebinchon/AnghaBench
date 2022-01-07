
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_remapped_plane_info {unsigned int width; unsigned int height; } ;



__attribute__((used)) static unsigned int rotated_size(const struct intel_remapped_plane_info *a,
     const struct intel_remapped_plane_info *b)
{
 return a->width * a->height + b->width * b->height;
}
