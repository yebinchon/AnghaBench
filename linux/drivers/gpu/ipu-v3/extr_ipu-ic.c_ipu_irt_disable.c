
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_priv {int ipu; scalar_t__ irt_use_count; } ;
struct ipu_ic {struct ipu_ic_priv* priv; } ;


 int IPU_CONF_ROT_EN ;
 int ipu_module_disable (int ,int ) ;

__attribute__((used)) static void ipu_irt_disable(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;

 if (priv->irt_use_count) {
  if (!--priv->irt_use_count)
   ipu_module_disable(priv->ipu, IPU_CONF_ROT_EN);
 }
}
