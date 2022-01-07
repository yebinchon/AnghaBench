
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mtk_dpi {int dummy; } ;


 int DPI_SIZE ;
 int HSIZE ;
 int HSIZE_MASK ;
 int VSIZE ;
 int VSIZE_MASK ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_fb_size(struct mtk_dpi *dpi, u32 width, u32 height)
{
 mtk_dpi_mask(dpi, DPI_SIZE, width << HSIZE, HSIZE_MASK);
 mtk_dpi_mask(dpi, DPI_SIZE, height << VSIZE, VSIZE_MASK);
}
