
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_dpi_yc_limit {int y_bottom; int y_top; int c_bottom; int c_top; } ;
struct mtk_dpi {int dummy; } ;


 int C_LIMIT_BOT ;
 int C_LIMIT_BOT_MASK ;
 int C_LIMIT_TOP ;
 int C_LIMIT_TOP_MASK ;
 int DPI_C_LIMIT ;
 int DPI_Y_LIMIT ;
 int Y_LIMINT_BOT ;
 int Y_LIMINT_BOT_MASK ;
 int Y_LIMINT_TOP ;
 int Y_LIMINT_TOP_MASK ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int,int ) ;

__attribute__((used)) static void mtk_dpi_config_channel_limit(struct mtk_dpi *dpi,
      struct mtk_dpi_yc_limit *limit)
{
 mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_bottom << Y_LIMINT_BOT,
       Y_LIMINT_BOT_MASK);
 mtk_dpi_mask(dpi, DPI_Y_LIMIT, limit->y_top << Y_LIMINT_TOP,
       Y_LIMINT_TOP_MASK);
 mtk_dpi_mask(dpi, DPI_C_LIMIT, limit->c_bottom << C_LIMIT_BOT,
       C_LIMIT_BOT_MASK);
 mtk_dpi_mask(dpi, DPI_C_LIMIT, limit->c_top << C_LIMIT_TOP,
       C_LIMIT_TOP_MASK);
}
