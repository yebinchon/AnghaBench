
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_4__ {int pixelclock; } ;
struct ipu_di_signal_cfg {int clkflags; TYPE_2__ mode; } ;
struct ipu_di {struct clk* clk_di_pixel; struct clk* clk_di; struct clk* clk_ipu; TYPE_1__* ipu; } ;
struct clk {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 unsigned int DIV_ROUND_CLOSEST (unsigned long,int) ;
 int DI_BS_CLKGEN0 ;
 int DI_BS_CLKGEN1 ;
 int DI_GENERAL ;
 unsigned int DI_GEN_DI_CLK_EXT ;
 int IPU_DI_CLKMODE_EXT ;
 int IPU_DI_CLKMODE_SYNC ;
 unsigned int clamp (unsigned int,unsigned int,unsigned int) ;
 unsigned int clk_get_rate (struct clk*) ;
 int clk_set_rate (struct clk*,int) ;
 int dev_dbg (int ,char*,int,unsigned int,unsigned int,...) ;
 unsigned int ipu_di_read (struct ipu_di*,int ) ;
 int ipu_di_write (struct ipu_di*,unsigned int,int ) ;

__attribute__((used)) static void ipu_di_config_clock(struct ipu_di *di,
 const struct ipu_di_signal_cfg *sig)
{
 struct clk *clk;
 unsigned clkgen0;
 uint32_t val;

 if (sig->clkflags & IPU_DI_CLKMODE_EXT) {





  clk = di->clk_di;

  if (sig->clkflags & IPU_DI_CLKMODE_SYNC) {







   clkgen0 = 1 << 4;
  } else {







   unsigned long in_rate;
   unsigned div;

   clk_set_rate(clk, sig->mode.pixelclock);

   in_rate = clk_get_rate(clk);
   div = DIV_ROUND_CLOSEST(in_rate, sig->mode.pixelclock);
   div = clamp(div, 1U, 255U);

   clkgen0 = div << 4;
  }
 } else {







  unsigned long rate, clkrate;
  unsigned div, error;

  clkrate = clk_get_rate(di->clk_ipu);
  div = DIV_ROUND_CLOSEST(clkrate, sig->mode.pixelclock);
  div = clamp(div, 1U, 255U);
  rate = clkrate / div;

  error = rate / (sig->mode.pixelclock / 1000);

  dev_dbg(di->ipu->dev, "  IPU clock can give %lu with divider %u, error %d.%u%%\n",
   rate, div, (signed)(error - 1000) / 10, error % 10);


  if (error < 1010 && error >= 990) {
   clk = di->clk_ipu;

   clkgen0 = div << 4;
  } else {
   unsigned long in_rate;
   unsigned div;

   clk = di->clk_di;

   clk_set_rate(clk, sig->mode.pixelclock);

   in_rate = clk_get_rate(clk);
   div = DIV_ROUND_CLOSEST(in_rate, sig->mode.pixelclock);
   div = clamp(div, 1U, 255U);

   clkgen0 = div << 4;
  }
 }

 di->clk_di_pixel = clk;


 ipu_di_write(di, clkgen0, DI_BS_CLKGEN0);







 ipu_di_write(di, (clkgen0 >> 4) << 16, DI_BS_CLKGEN1);


 val = ipu_di_read(di, DI_GENERAL) & ~DI_GEN_DI_CLK_EXT;
 if (clk == di->clk_di)
  val |= DI_GEN_DI_CLK_EXT;
 ipu_di_write(di, val, DI_GENERAL);

 dev_dbg(di->ipu->dev, "Want %luHz IPU %luHz DI %luHz using %s, %luHz\n",
  sig->mode.pixelclock,
  clk_get_rate(di->clk_ipu),
  clk_get_rate(di->clk_di),
  clk == di->clk_di ? "DI" : "IPU",
  clk_get_rate(di->clk_di_pixel) / (clkgen0 >> 4));
}
