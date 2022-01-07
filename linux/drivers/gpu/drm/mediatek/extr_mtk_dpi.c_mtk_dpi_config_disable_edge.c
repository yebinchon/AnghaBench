
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtk_dpi {TYPE_1__* conf; } ;
struct TYPE_2__ {int reg_h_fre_con; scalar_t__ edge_sel_en; } ;


 int EDGE_SEL_EN ;
 int mtk_dpi_mask (struct mtk_dpi*,int ,int ,int ) ;

__attribute__((used)) static void mtk_dpi_config_disable_edge(struct mtk_dpi *dpi)
{
 if (dpi->conf->edge_sel_en)
  mtk_dpi_mask(dpi, dpi->conf->reg_h_fre_con, 0, EDGE_SEL_EN);
}
