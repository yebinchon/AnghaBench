
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int hactive; int flags; int pixelclock; int vactive; } ;
struct ipu_di_signal_cfg {int hsync_pin; int vsync_pin; scalar_t__ data_pol; scalar_t__ enable_pol; scalar_t__ clk_pol; TYPE_2__ mode; } ;
struct ipu_di {int id; int clk_di; int clk_ipu; TYPE_1__* ipu; } ;
struct TYPE_3__ {int dev; } ;


 int DISPLAY_FLAGS_HSYNC_HIGH ;
 int DISPLAY_FLAGS_INTERLACED ;
 int DISPLAY_FLAGS_VSYNC_HIGH ;
 int DI_BS_CLKGEN0 ;
 int DI_BS_CLKGEN1 ;
 int DI_GENERAL ;
 int DI_GEN_DI_CLK_EXT ;
 int DI_GEN_DI_VSYNC_EXT ;
 int DI_GEN_POLARITY_DISP_CLK ;
 int DI_PIN15 ;
 int DI_POL ;
 int DI_POL_DRDY_DATA_POLARITY ;
 int DI_POL_DRDY_POLARITY_15 ;
 int DI_SYNC_AS_GEN ;
 int DI_VSYNC_SEL_OFFSET ;
 int SYNC_WAVE ;
 int clk_get_rate (int ) ;
 int dev_dbg (int ,char*,int,int,int ) ;
 int di_mutex ;
 int ipu_di_config_clock (struct ipu_di*,struct ipu_di_signal_cfg*) ;
 int ipu_di_data_pin_config (struct ipu_di*,int ,int ,int,int ,int) ;
 int ipu_di_data_wave_config (struct ipu_di*,int ,int,int) ;
 int ipu_di_gen_polarity (int) ;
 int ipu_di_read (struct ipu_di*,int ) ;
 int ipu_di_sync_config_interlaced (struct ipu_di*,struct ipu_di_signal_cfg*) ;
 int ipu_di_sync_config_noninterlaced (struct ipu_di*,struct ipu_di_signal_cfg*,int) ;
 int ipu_di_write (struct ipu_di*,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int ipu_di_init_sync_panel(struct ipu_di *di, struct ipu_di_signal_cfg *sig)
{
 u32 reg;
 u32 di_gen, vsync_cnt;
 u32 div;

 dev_dbg(di->ipu->dev, "disp %d: panel size = %d x %d\n",
  di->id, sig->mode.hactive, sig->mode.vactive);

 dev_dbg(di->ipu->dev, "Clocks: IPU %luHz DI %luHz Needed %luHz\n",
  clk_get_rate(di->clk_ipu),
  clk_get_rate(di->clk_di),
  sig->mode.pixelclock);

 mutex_lock(&di_mutex);

 ipu_di_config_clock(di, sig);

 div = ipu_di_read(di, DI_BS_CLKGEN0) & 0xfff;
 div = div / 16;



 ipu_di_write(di, (div << 16), DI_BS_CLKGEN1);

 ipu_di_data_wave_config(di, SYNC_WAVE, div - 1, div - 1);
 ipu_di_data_pin_config(di, SYNC_WAVE, DI_PIN15, 3, 0, div * 2);

 di_gen = ipu_di_read(di, DI_GENERAL) & DI_GEN_DI_CLK_EXT;
 di_gen |= DI_GEN_DI_VSYNC_EXT;

 if (sig->mode.flags & DISPLAY_FLAGS_INTERLACED) {
  ipu_di_sync_config_interlaced(di, sig);


  di_gen |= 0x10000000;

  vsync_cnt = 3;
 } else {
  ipu_di_sync_config_noninterlaced(di, sig, div);

  vsync_cnt = 3;
  if (di->id == 1)




   if (!(sig->hsync_pin == 2 && sig->vsync_pin == 3))
    vsync_cnt = 6;
 }

 if (sig->mode.flags & DISPLAY_FLAGS_HSYNC_HIGH)
  di_gen |= ipu_di_gen_polarity(sig->hsync_pin);
 if (sig->mode.flags & DISPLAY_FLAGS_VSYNC_HIGH)
  di_gen |= ipu_di_gen_polarity(sig->vsync_pin);

 if (sig->clk_pol)
  di_gen |= DI_GEN_POLARITY_DISP_CLK;

 ipu_di_write(di, di_gen, DI_GENERAL);

 ipu_di_write(di, (--vsync_cnt << DI_VSYNC_SEL_OFFSET) | 0x00000002,
       DI_SYNC_AS_GEN);

 reg = ipu_di_read(di, DI_POL);
 reg &= ~(DI_POL_DRDY_DATA_POLARITY | DI_POL_DRDY_POLARITY_15);

 if (sig->enable_pol)
  reg |= DI_POL_DRDY_POLARITY_15;
 if (sig->data_pol)
  reg |= DI_POL_DRDY_DATA_POLARITY;

 ipu_di_write(di, reg, DI_POL);

 mutex_unlock(&di_mutex);

 return 0;
}
