
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_cpmem* cpmem_priv; } ;
struct ipu_cpmem {struct ipu_soc* ipu; int base; int lock; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SZ_128K ;
 int dev_dbg (struct device*,char*,unsigned long,int ) ;
 int devm_ioremap (struct device*,unsigned long,int ) ;
 struct ipu_cpmem* devm_kzalloc (struct device*,int,int ) ;
 int spin_lock_init (int *) ;

int ipu_cpmem_init(struct ipu_soc *ipu, struct device *dev, unsigned long base)
{
 struct ipu_cpmem *cpmem;

 cpmem = devm_kzalloc(dev, sizeof(*cpmem), GFP_KERNEL);
 if (!cpmem)
  return -ENOMEM;

 ipu->cpmem_priv = cpmem;

 spin_lock_init(&cpmem->lock);
 cpmem->base = devm_ioremap(dev, base, SZ_128K);
 if (!cpmem->base)
  return -ENOMEM;

 dev_dbg(dev, "CPMEM base: 0x%08lx remapped to %p\n",
  base, cpmem->base);
 cpmem->ipu = ipu;

 return 0;
}
