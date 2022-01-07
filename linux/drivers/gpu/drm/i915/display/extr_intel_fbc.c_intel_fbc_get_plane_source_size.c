
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int src_w; int src_h; } ;
struct intel_fbc_state_cache {TYPE_1__ plane; } ;



__attribute__((used)) static void intel_fbc_get_plane_source_size(struct intel_fbc_state_cache *cache,
         int *width, int *height)
{
 if (width)
  *width = cache->plane.src_w;
 if (height)
  *height = cache->plane.src_h;
}
