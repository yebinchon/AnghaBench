
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_prg* prg_priv; } ;
struct ipu_prg {int dev; } ;


 int pm_runtime_put (int ) ;

void ipu_prg_disable(struct ipu_soc *ipu)
{
 struct ipu_prg *prg = ipu->prg_priv;

 if (!prg)
  return;

 pm_runtime_put(prg->dev);
}
