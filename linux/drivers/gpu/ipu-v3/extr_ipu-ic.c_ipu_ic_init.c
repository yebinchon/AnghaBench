
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipu_soc {struct ipu_ic_priv* ic_priv; } ;
struct ipu_ic_priv {TYPE_1__* task; struct ipu_soc* ipu; void* base; void* tpmem_base; int lock; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int task; int * bit; int * reg; struct ipu_ic_priv* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IC_NUM_TASKS ;
 int PAGE_SIZE ;
 int SZ_64K ;
 int dev_dbg (struct device*,char*,unsigned long,void*) ;
 void* devm_ioremap (struct device*,unsigned long,int ) ;
 struct ipu_ic_priv* devm_kzalloc (struct device*,int,int ) ;
 int * ic_task_bit ;
 int * ic_task_reg ;
 int spin_lock_init (int *) ;

int ipu_ic_init(struct ipu_soc *ipu, struct device *dev,
  unsigned long base, unsigned long tpmem_base)
{
 struct ipu_ic_priv *priv;
 int i;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 ipu->ic_priv = priv;

 spin_lock_init(&priv->lock);
 priv->base = devm_ioremap(dev, base, PAGE_SIZE);
 if (!priv->base)
  return -ENOMEM;
 priv->tpmem_base = devm_ioremap(dev, tpmem_base, SZ_64K);
 if (!priv->tpmem_base)
  return -ENOMEM;

 dev_dbg(dev, "IC base: 0x%08lx remapped to %p\n", base, priv->base);

 priv->ipu = ipu;

 for (i = 0; i < IC_NUM_TASKS; i++) {
  priv->task[i].task = i;
  priv->task[i].priv = priv;
  priv->task[i].reg = &ic_task_reg[i];
  priv->task[i].bit = &ic_task_bit[i];
 }

 return 0;
}
