
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipu_vdi {struct ipu_soc* ipu; int base; int module; int lock; } ;
struct ipu_soc {struct ipu_vdi* vdi_priv; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int dev_dbg (struct device*,char*,unsigned long,int ) ;
 int devm_ioremap (struct device*,unsigned long,int ) ;
 struct ipu_vdi* devm_kzalloc (struct device*,int,int ) ;
 int spin_lock_init (int *) ;

int ipu_vdi_init(struct ipu_soc *ipu, struct device *dev,
   unsigned long base, u32 module)
{
 struct ipu_vdi *vdi;

 vdi = devm_kzalloc(dev, sizeof(*vdi), GFP_KERNEL);
 if (!vdi)
  return -ENOMEM;

 ipu->vdi_priv = vdi;

 spin_lock_init(&vdi->lock);
 vdi->module = module;
 vdi->base = devm_ioremap(dev, base, PAGE_SIZE);
 if (!vdi->base)
  return -ENOMEM;

 dev_dbg(dev, "VDI base: 0x%08lx remapped to %p\n", base, vdi->base);
 vdi->ipu = ipu;

 return 0;
}
