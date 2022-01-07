
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ const u32 ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
struct TYPE_2__ {scalar_t__** supported_color_modes; } ;



__attribute__((used)) static bool dispc_ovl_color_mode_supported(struct dispc_device *dispc,
        enum omap_plane_id plane, u32 fourcc)
{
 const u32 *modes;
 unsigned int i;

 modes = dispc->feat->supported_color_modes[plane];

 for (i = 0; modes[i]; ++i) {
  if (modes[i] == fourcc)
   return 1;
 }

 return 0;
}
