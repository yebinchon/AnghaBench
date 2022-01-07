
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {struct ipu_di** di_priv; } ;
struct ipu_di {int id; int inuse; struct ipu_soc* ipu; int base; struct clk* clk_ipu; int module; int clk_di; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int DI_BS_CLKGEN0 ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int dev_dbg (struct device*,char*,int,unsigned long,int ) ;
 int devm_clk_get (struct device*,char*) ;
 int devm_ioremap (struct device*,unsigned long,int ) ;
 struct ipu_di* devm_kzalloc (struct device*,int,int ) ;
 int ipu_di_write (struct ipu_di*,int,int ) ;

int ipu_di_init(struct ipu_soc *ipu, struct device *dev, int id,
  unsigned long base,
  u32 module, struct clk *clk_ipu)
{
 struct ipu_di *di;

 if (id > 1)
  return -ENODEV;

 di = devm_kzalloc(dev, sizeof(*di), GFP_KERNEL);
 if (!di)
  return -ENOMEM;

 ipu->di_priv[id] = di;

 di->clk_di = devm_clk_get(dev, id ? "di1" : "di0");
 if (IS_ERR(di->clk_di))
  return PTR_ERR(di->clk_di);

 di->module = module;
 di->id = id;
 di->clk_ipu = clk_ipu;
 di->base = devm_ioremap(dev, base, PAGE_SIZE);
 if (!di->base)
  return -ENOMEM;

 ipu_di_write(di, 0x10, DI_BS_CLKGEN0);

 dev_dbg(dev, "DI%d base: 0x%08lx remapped to %p\n",
   id, base, di->base);
 di->inuse = 0;
 di->ipu = ipu;

 return 0;
}
