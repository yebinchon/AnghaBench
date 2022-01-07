
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct imx_ldb_channel {int chno; struct imx_ldb* ldb; } ;
struct imx_ldb {int ldb_ctrl; } ;


 int LDB_BIT_MAP_CH0_JEIDA ;
 int LDB_BIT_MAP_CH1_JEIDA ;
 int LDB_DATA_WIDTH_CH0_24 ;
 int LDB_DATA_WIDTH_CH1_24 ;
 int LDB_SPLIT_MODE_EN ;




__attribute__((used)) static void imx_ldb_ch_set_bus_format(struct imx_ldb_channel *imx_ldb_ch,
          u32 bus_format)
{
 struct imx_ldb *ldb = imx_ldb_ch->ldb;
 int dual = ldb->ldb_ctrl & LDB_SPLIT_MODE_EN;

 switch (bus_format) {
 case 130:
  break;
 case 128:
  if (imx_ldb_ch->chno == 0 || dual)
   ldb->ldb_ctrl |= LDB_DATA_WIDTH_CH0_24;
  if (imx_ldb_ch->chno == 1 || dual)
   ldb->ldb_ctrl |= LDB_DATA_WIDTH_CH1_24;
  break;
 case 129:
  if (imx_ldb_ch->chno == 0 || dual)
   ldb->ldb_ctrl |= LDB_DATA_WIDTH_CH0_24 |
      LDB_BIT_MAP_CH0_JEIDA;
  if (imx_ldb_ch->chno == 1 || dual)
   ldb->ldb_ctrl |= LDB_DATA_WIDTH_CH1_24 |
      LDB_BIT_MAP_CH1_JEIDA;
  break;
 }
}
