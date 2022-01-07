
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi_sync_param {int sync_width; int shift_half_line; int back_porch; int front_porch; } ;
struct mtk_dpi {int dummy; } ;


 int VSYNC_BACK_PORCH_MASK ;
 int VSYNC_BACK_PORCH_SHIFT ;
 int VSYNC_FRONT_PORCH_MASK ;
 int VSYNC_FRONT_PORCH_SHIFT ;
 int VSYNC_HALF_LINE_MASK ;
 int VSYNC_HALF_LINE_SHIFT ;
 int VSYNC_WIDTH_MASK ;
 int VSYNC_WIDTH_SHIFT ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_vsync(struct mtk_dpi *dpi,
     struct mtk_dpi_sync_param *sync,
     u32 width_addr, u32 porch_addr)
{
 mtk_dpi_mask(dpi, width_addr,
       sync->sync_width << VSYNC_WIDTH_SHIFT,
       VSYNC_WIDTH_MASK);
 mtk_dpi_mask(dpi, width_addr,
       sync->shift_half_line << VSYNC_HALF_LINE_SHIFT,
       VSYNC_HALF_LINE_MASK);
 mtk_dpi_mask(dpi, porch_addr,
       sync->back_porch << VSYNC_BACK_PORCH_SHIFT,
       VSYNC_BACK_PORCH_MASK);
 mtk_dpi_mask(dpi, porch_addr,
       sync->front_porch << VSYNC_FRONT_PORCH_SHIFT,
       VSYNC_FRONT_PORCH_MASK);
}
