
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_soc {struct ipu_prg* prg_priv; } ;
struct ipu_prg {int dev; } ;


 int pm_runtime_get_sync (int ) ;

int ipu_prg_enable(struct ipu_soc *ipu)
{
 struct ipu_prg *prg = ipu->prg_priv;

 if (!prg)
  return 0;

 return pm_runtime_get_sync(prg->dev);
}
