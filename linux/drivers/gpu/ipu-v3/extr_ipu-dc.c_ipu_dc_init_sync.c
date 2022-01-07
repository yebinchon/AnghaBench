
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_di {int dummy; } ;
struct ipu_dc_priv {scalar_t__ dc_reg; } ;
struct ipu_dc {scalar_t__ di; scalar_t__ base; struct ipu_dc_priv* priv; } ;


 scalar_t__ DC_DISP_CONF2 (scalar_t__) ;
 int DC_EVT_EOF ;
 int DC_EVT_EOFIELD ;
 int DC_EVT_EOL ;
 int DC_EVT_NEW_ADDR ;
 int DC_EVT_NEW_CHAN ;
 int DC_EVT_NEW_DATA ;
 int DC_EVT_NF ;
 int DC_EVT_NFIELD ;
 int DC_EVT_NL ;
 scalar_t__ DC_WR_CH_ADDR ;
 scalar_t__ DC_WR_CH_CONF ;
 int DC_WR_CH_CONF_FIELD_MODE ;
 int NULL_WAVE ;
 int SYNC_WAVE ;
 int WRG ;
 int WROD (int ) ;
 int dc_link_event (struct ipu_dc*,int ,int,int) ;
 int dc_write_tmpl (struct ipu_dc*,int,int ,int ,int,int ,int,int,int) ;
 int ipu_bus_format_to_map (int) ;
 scalar_t__ ipu_di_get_num (struct ipu_di*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

int ipu_dc_init_sync(struct ipu_dc *dc, struct ipu_di *di, bool interlaced,
  u32 bus_format, u32 width)
{
 struct ipu_dc_priv *priv = dc->priv;
 int addr, sync;
 u32 reg = 0;
 int map;

 dc->di = ipu_di_get_num(di);

 map = ipu_bus_format_to_map(bus_format);







 sync = interlaced ? 6 : 5;


 if (dc->di)
  addr = 5;
 else
  addr = 0;

 if (interlaced) {
  dc_link_event(dc, DC_EVT_NL, addr, 3);
  dc_link_event(dc, DC_EVT_EOL, addr, 2);
  dc_link_event(dc, DC_EVT_NEW_DATA, addr, 1);


  dc_write_tmpl(dc, addr, WROD(0), 0, map, SYNC_WAVE, 0, sync, 1);
 } else {
  dc_link_event(dc, DC_EVT_NL, addr + 2, 3);
  dc_link_event(dc, DC_EVT_EOL, addr + 3, 2);
  dc_link_event(dc, DC_EVT_NEW_DATA, addr + 1, 1);


  dc_write_tmpl(dc, addr + 2, WROD(0), 0, map, SYNC_WAVE, 8, sync, 1);
  dc_write_tmpl(dc, addr + 3, WROD(0), 0, map, SYNC_WAVE, 4, sync, 0);
  dc_write_tmpl(dc, addr + 4, WRG, 0, map, NULL_WAVE, 0, 0, 1);
  dc_write_tmpl(dc, addr + 1, WROD(0), 0, map, SYNC_WAVE, 0, sync, 1);
 }

 dc_link_event(dc, DC_EVT_NF, 0, 0);
 dc_link_event(dc, DC_EVT_NFIELD, 0, 0);
 dc_link_event(dc, DC_EVT_EOF, 0, 0);
 dc_link_event(dc, DC_EVT_EOFIELD, 0, 0);
 dc_link_event(dc, DC_EVT_NEW_CHAN, 0, 0);
 dc_link_event(dc, DC_EVT_NEW_ADDR, 0, 0);

 reg = readl(dc->base + DC_WR_CH_CONF);
 if (interlaced)
  reg |= DC_WR_CH_CONF_FIELD_MODE;
 else
  reg &= ~DC_WR_CH_CONF_FIELD_MODE;
 writel(reg, dc->base + DC_WR_CH_CONF);

 writel(0x0, dc->base + DC_WR_CH_ADDR);
 writel(width, priv->dc_reg + DC_DISP_CONF2(dc->di));

 return 0;
}
