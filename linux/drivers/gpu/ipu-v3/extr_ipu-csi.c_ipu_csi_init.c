
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_soc {struct ipu_csi** csi_priv; } ;
struct ipu_csi {int id; struct ipu_soc* ipu; int base; struct clk* clk_ipu; int module; int lock; } ;
struct device {int dummy; } ;
struct clk {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int dev_dbg (struct device*,char*,int,unsigned long,int ) ;
 int devm_ioremap (struct device*,unsigned long,int ) ;
 struct ipu_csi* devm_kzalloc (struct device*,int,int ) ;
 int spin_lock_init (int *) ;

int ipu_csi_init(struct ipu_soc *ipu, struct device *dev, int id,
   unsigned long base, u32 module, struct clk *clk_ipu)
{
 struct ipu_csi *csi;

 if (id > 1)
  return -ENODEV;

 csi = devm_kzalloc(dev, sizeof(*csi), GFP_KERNEL);
 if (!csi)
  return -ENOMEM;

 ipu->csi_priv[id] = csi;

 spin_lock_init(&csi->lock);
 csi->module = module;
 csi->id = id;
 csi->clk_ipu = clk_ipu;
 csi->base = devm_ioremap(dev, base, PAGE_SIZE);
 if (!csi->base)
  return -ENOMEM;

 dev_dbg(dev, "CSI%d base: 0x%08lx remapped to %p\n",
  id, base, csi->base);
 csi->ipu = ipu;

 return 0;
}
