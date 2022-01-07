
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u32 ;
struct tegra_plane {struct tegra_dc* dc; } ;
struct TYPE_8__ {unsigned long value; int mode; } ;
struct TYPE_6__ {unsigned int x; unsigned int y; unsigned int w; unsigned int h; } ;
struct TYPE_5__ {int h; int w; int x; int y; } ;
struct tegra_dc_window {unsigned int format; int bits_per_pixel; unsigned int swap; unsigned int* base; int* stride; scalar_t__ bottom_up; TYPE_4__ tiling; TYPE_2__ src; TYPE_1__ dst; } ;
struct tegra_dc {TYPE_3__* soc; } ;
struct TYPE_7__ {scalar_t__ has_legacy_blending; scalar_t__ supports_block_linear; } ;


 unsigned int COLOR_EXPAND ;
 unsigned int CSC_ENABLE ;
 int DC_WINBUF_ADDR_H_OFFSET ;
 int DC_WINBUF_ADDR_V_OFFSET ;
 int DC_WINBUF_START_ADDR ;
 int DC_WINBUF_START_ADDR_U ;
 int DC_WINBUF_START_ADDR_V ;
 int DC_WINBUF_SURFACE_KIND ;
 unsigned int DC_WINBUF_SURFACE_KIND_BLOCK ;
 unsigned int DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT (unsigned long) ;
 unsigned int DC_WINBUF_SURFACE_KIND_PITCH ;
 unsigned int DC_WINBUF_SURFACE_KIND_TILED ;
 int DC_WIN_BUFFER_ADDR_MODE ;
 unsigned int DC_WIN_BUFFER_ADDR_MODE_LINEAR ;
 unsigned int DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV ;
 unsigned int DC_WIN_BUFFER_ADDR_MODE_TILE ;
 unsigned int DC_WIN_BUFFER_ADDR_MODE_TILE_UV ;
 int DC_WIN_BUF_STRIDE ;
 int DC_WIN_BYTE_SWAP ;
 int DC_WIN_COLOR_DEPTH ;
 int DC_WIN_CSC_KUB ;
 int DC_WIN_CSC_KUG ;
 int DC_WIN_CSC_KUR ;
 int DC_WIN_CSC_KVB ;
 int DC_WIN_CSC_KVG ;
 int DC_WIN_CSC_KVR ;
 int DC_WIN_CSC_KYRGB ;
 int DC_WIN_CSC_YOF ;
 int DC_WIN_DDA_INC ;
 int DC_WIN_H_FILTER_P (int) ;
 int DC_WIN_H_INITIAL_DDA ;
 int DC_WIN_LINE_STRIDE ;
 int DC_WIN_POSITION ;
 int DC_WIN_PRESCALED_SIZE ;
 int DC_WIN_SIZE ;
 int DC_WIN_UV_BUF_STRIDE ;
 int DC_WIN_V_FILTER_P (unsigned int) ;
 int DC_WIN_V_INITIAL_DDA ;
 int DC_WIN_WIN_OPTIONS ;
 unsigned int H_DDA_INC (unsigned int) ;
 unsigned int H_FILTER ;
 unsigned int H_POSITION (int ) ;
 unsigned int H_PRESCALED_SIZE (unsigned int) ;
 unsigned int H_SIZE (int ) ;



 unsigned int V_DDA_INC (unsigned int) ;
 unsigned int V_DIRECTION ;
 unsigned int V_FILTER ;
 unsigned int V_POSITION (int ) ;
 unsigned int V_PRESCALED_SIZE (unsigned int) ;
 unsigned int V_SIZE (int ) ;
 unsigned int WIN_ENABLE ;
 unsigned int compute_dda_inc (unsigned int,int ,int,unsigned int) ;
 unsigned int compute_initial_dda (unsigned int) ;
 int tegra_plane_format_is_yuv (unsigned int,int*) ;
 int tegra_plane_setup_blending (struct tegra_plane*,struct tegra_dc_window const*) ;
 int tegra_plane_setup_blending_legacy (struct tegra_plane*) ;
 scalar_t__ tegra_plane_use_horizontal_filtering (struct tegra_plane*,struct tegra_dc_window const*) ;
 scalar_t__ tegra_plane_use_vertical_filtering (struct tegra_plane*,struct tegra_dc_window const*) ;
 int tegra_plane_writel (struct tegra_plane*,unsigned int,int ) ;

__attribute__((used)) static void tegra_dc_setup_window(struct tegra_plane *plane,
      const struct tegra_dc_window *window)
{
 unsigned h_offset, v_offset, h_size, v_size, h_dda, v_dda, bpp;
 struct tegra_dc *dc = plane->dc;
 bool yuv, planar;
 u32 value;





 yuv = tegra_plane_format_is_yuv(window->format, &planar);
 if (!yuv)
  bpp = window->bits_per_pixel / 8;
 else
  bpp = planar ? 1 : 2;

 tegra_plane_writel(plane, window->format, DC_WIN_COLOR_DEPTH);
 tegra_plane_writel(plane, window->swap, DC_WIN_BYTE_SWAP);

 value = V_POSITION(window->dst.y) | H_POSITION(window->dst.x);
 tegra_plane_writel(plane, value, DC_WIN_POSITION);

 value = V_SIZE(window->dst.h) | H_SIZE(window->dst.w);
 tegra_plane_writel(plane, value, DC_WIN_SIZE);

 h_offset = window->src.x * bpp;
 v_offset = window->src.y;
 h_size = window->src.w * bpp;
 v_size = window->src.h;

 value = V_PRESCALED_SIZE(v_size) | H_PRESCALED_SIZE(h_size);
 tegra_plane_writel(plane, value, DC_WIN_PRESCALED_SIZE);





 if (yuv && planar)
  bpp = 2;

 h_dda = compute_dda_inc(window->src.w, window->dst.w, 0, bpp);
 v_dda = compute_dda_inc(window->src.h, window->dst.h, 1, bpp);

 value = V_DDA_INC(v_dda) | H_DDA_INC(h_dda);
 tegra_plane_writel(plane, value, DC_WIN_DDA_INC);

 h_dda = compute_initial_dda(window->src.x);
 v_dda = compute_initial_dda(window->src.y);

 tegra_plane_writel(plane, h_dda, DC_WIN_H_INITIAL_DDA);
 tegra_plane_writel(plane, v_dda, DC_WIN_V_INITIAL_DDA);

 tegra_plane_writel(plane, 0, DC_WIN_UV_BUF_STRIDE);
 tegra_plane_writel(plane, 0, DC_WIN_BUF_STRIDE);

 tegra_plane_writel(plane, window->base[0], DC_WINBUF_START_ADDR);

 if (yuv && planar) {
  tegra_plane_writel(plane, window->base[1], DC_WINBUF_START_ADDR_U);
  tegra_plane_writel(plane, window->base[2], DC_WINBUF_START_ADDR_V);
  value = window->stride[1] << 16 | window->stride[0];
  tegra_plane_writel(plane, value, DC_WIN_LINE_STRIDE);
 } else {
  tegra_plane_writel(plane, window->stride[0], DC_WIN_LINE_STRIDE);
 }

 if (window->bottom_up)
  v_offset += window->src.h - 1;

 tegra_plane_writel(plane, h_offset, DC_WINBUF_ADDR_H_OFFSET);
 tegra_plane_writel(plane, v_offset, DC_WINBUF_ADDR_V_OFFSET);

 if (dc->soc->supports_block_linear) {
  unsigned long height = window->tiling.value;

  switch (window->tiling.mode) {
  case 129:
   value = DC_WINBUF_SURFACE_KIND_PITCH;
   break;

  case 128:
   value = DC_WINBUF_SURFACE_KIND_TILED;
   break;

  case 130:
   value = DC_WINBUF_SURFACE_KIND_BLOCK_HEIGHT(height) |
    DC_WINBUF_SURFACE_KIND_BLOCK;
   break;
  }

  tegra_plane_writel(plane, value, DC_WINBUF_SURFACE_KIND);
 } else {
  switch (window->tiling.mode) {
  case 129:
   value = DC_WIN_BUFFER_ADDR_MODE_LINEAR_UV |
    DC_WIN_BUFFER_ADDR_MODE_LINEAR;
   break;

  case 128:
   value = DC_WIN_BUFFER_ADDR_MODE_TILE_UV |
    DC_WIN_BUFFER_ADDR_MODE_TILE;
   break;

  case 130:




   break;
  }

  tegra_plane_writel(plane, value, DC_WIN_BUFFER_ADDR_MODE);
 }

 value = WIN_ENABLE;

 if (yuv) {

  tegra_plane_writel(plane, 0x00f0, DC_WIN_CSC_YOF);
  tegra_plane_writel(plane, 0x012a, DC_WIN_CSC_KYRGB);
  tegra_plane_writel(plane, 0x0000, DC_WIN_CSC_KUR);
  tegra_plane_writel(plane, 0x0198, DC_WIN_CSC_KVR);
  tegra_plane_writel(plane, 0x039b, DC_WIN_CSC_KUG);
  tegra_plane_writel(plane, 0x032f, DC_WIN_CSC_KVG);
  tegra_plane_writel(plane, 0x0204, DC_WIN_CSC_KUB);
  tegra_plane_writel(plane, 0x0000, DC_WIN_CSC_KVB);

  value |= CSC_ENABLE;
 } else if (window->bits_per_pixel < 24) {
  value |= COLOR_EXPAND;
 }

 if (window->bottom_up)
  value |= V_DIRECTION;

 if (tegra_plane_use_horizontal_filtering(plane, window)) {




  tegra_plane_writel(plane, 0x00008000, DC_WIN_H_FILTER_P(0));
  tegra_plane_writel(plane, 0x3e087ce1, DC_WIN_H_FILTER_P(1));
  tegra_plane_writel(plane, 0x3b117ac1, DC_WIN_H_FILTER_P(2));
  tegra_plane_writel(plane, 0x591b73aa, DC_WIN_H_FILTER_P(3));
  tegra_plane_writel(plane, 0x57256d9a, DC_WIN_H_FILTER_P(4));
  tegra_plane_writel(plane, 0x552f668b, DC_WIN_H_FILTER_P(5));
  tegra_plane_writel(plane, 0x73385e8b, DC_WIN_H_FILTER_P(6));
  tegra_plane_writel(plane, 0x72435583, DC_WIN_H_FILTER_P(7));
  tegra_plane_writel(plane, 0x714c4c8b, DC_WIN_H_FILTER_P(8));
  tegra_plane_writel(plane, 0x70554393, DC_WIN_H_FILTER_P(9));
  tegra_plane_writel(plane, 0x715e389b, DC_WIN_H_FILTER_P(10));
  tegra_plane_writel(plane, 0x71662faa, DC_WIN_H_FILTER_P(11));
  tegra_plane_writel(plane, 0x536d25ba, DC_WIN_H_FILTER_P(12));
  tegra_plane_writel(plane, 0x55731bca, DC_WIN_H_FILTER_P(13));
  tegra_plane_writel(plane, 0x387a11d9, DC_WIN_H_FILTER_P(14));
  tegra_plane_writel(plane, 0x3c7c08f1, DC_WIN_H_FILTER_P(15));

  value |= H_FILTER;
 }

 if (tegra_plane_use_vertical_filtering(plane, window)) {
  unsigned int i, k;





  for (i = 0, k = 128; i < 16; i++, k -= 8)
   tegra_plane_writel(plane, k, DC_WIN_V_FILTER_P(i));

  value |= V_FILTER;
 }

 tegra_plane_writel(plane, value, DC_WIN_WIN_OPTIONS);

 if (dc->soc->has_legacy_blending)
  tegra_plane_setup_blending_legacy(plane);
 else
  tegra_plane_setup_blending(plane, window);
}
