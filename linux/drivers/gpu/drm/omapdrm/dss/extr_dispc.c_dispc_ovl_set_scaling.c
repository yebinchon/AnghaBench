
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct dispc_device {int dummy; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;


 int BUG_ON (int) ;
 int OMAP_DSS_GFX ;
 int dispc_ovl_set_scaling_common (struct dispc_device*,int,int ,int ,int ,int ,int,int,int,int ,int ) ;
 int dispc_ovl_set_scaling_uv (struct dispc_device*,int,int ,int ,int ,int ,int,int,int,int ,int ) ;

__attribute__((used)) static void dispc_ovl_set_scaling(struct dispc_device *dispc,
      enum omap_plane_id plane,
      u16 orig_width, u16 orig_height,
      u16 out_width, u16 out_height,
      bool ilace, bool five_taps,
      bool fieldmode, u32 fourcc,
      u8 rotation)
{
 BUG_ON(plane == OMAP_DSS_GFX);

 dispc_ovl_set_scaling_common(dispc, plane, orig_width, orig_height,
         out_width, out_height, ilace, five_taps,
         fieldmode, fourcc, rotation);

 dispc_ovl_set_scaling_uv(dispc, plane, orig_width, orig_height,
     out_width, out_height, ilace, five_taps,
     fieldmode, fourcc, rotation);
}
