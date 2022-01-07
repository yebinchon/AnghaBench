
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct videomode {int hactive; } ;
struct dsi_data {scalar_t__ mode; int line_buffer_size; struct videomode vm; int pix_fmt; } ;


 int DSI_CTRL ;
 scalar_t__ OMAP_DSS_DSI_VIDEO_MODE ;
 int REG_FLD_MOD (struct dsi_data*,int ,int,int,int) ;
 int dsi_get_pixel_size (int ) ;

__attribute__((used)) static void dsi_config_vp_num_line_buffers(struct dsi_data *dsi)
{
 int num_line_buffers;

 if (dsi->mode == OMAP_DSS_DSI_VIDEO_MODE) {
  int bpp = dsi_get_pixel_size(dsi->pix_fmt);
  const struct videomode *vm = &dsi->vm;




  if (dsi->line_buffer_size <= vm->hactive * bpp / 8)
   num_line_buffers = 0;
  else
   num_line_buffers = 2;
 } else {

  num_line_buffers = 2;
 }


 REG_FLD_MOD(dsi, DSI_CTRL, num_line_buffers, 13, 12);
}
