
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct videomode {int dummy; } ;
struct omap_overlay_info {int rotation_type; int global_alpha; int pre_mult_alpha; int zorder; int rotation; int fourcc; int out_height; int out_width; int height; int width; int pos_y; int pos_x; int screen_width; int p_uv_addr; int paddr; } ;
struct dispc_device {TYPE_1__* feat; } ;
typedef enum omap_plane_id { ____Placeholder_omap_plane_id } omap_plane_id ;
typedef enum omap_overlay_caps { ____Placeholder_omap_overlay_caps } omap_overlay_caps ;
typedef enum omap_channel { ____Placeholder_omap_channel } omap_channel ;
struct TYPE_2__ {int* overlay_caps; } ;


 int DSSDBG (char*,int,int *,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int const) ;
 int dispc_ovl_set_channel_out (struct dispc_device*,int,int) ;
 int dispc_ovl_setup_common (struct dispc_device*,int,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int const,struct videomode const*,int) ;

__attribute__((used)) static int dispc_ovl_setup(struct dispc_device *dispc,
      enum omap_plane_id plane,
      const struct omap_overlay_info *oi,
      const struct videomode *vm, bool mem_to_mem,
      enum omap_channel channel)
{
 int r;
 enum omap_overlay_caps caps = dispc->feat->overlay_caps[plane];
 const bool replication = 1;

 DSSDBG("dispc_ovl_setup %d, pa %pad, pa_uv %pad, sw %d, %d,%d, %dx%d ->"
  " %dx%d, cmode %x, rot %d, chan %d repl %d\n",
  plane, &oi->paddr, &oi->p_uv_addr, oi->screen_width, oi->pos_x,
  oi->pos_y, oi->width, oi->height, oi->out_width, oi->out_height,
  oi->fourcc, oi->rotation, channel, replication);

 dispc_ovl_set_channel_out(dispc, plane, channel);

 r = dispc_ovl_setup_common(dispc, plane, caps, oi->paddr, oi->p_uv_addr,
  oi->screen_width, oi->pos_x, oi->pos_y, oi->width, oi->height,
  oi->out_width, oi->out_height, oi->fourcc, oi->rotation,
  oi->zorder, oi->pre_mult_alpha, oi->global_alpha,
  oi->rotation_type, replication, vm, mem_to_mem);

 return r;
}
