
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipu_ic_priv {int irt_use_count; int ipu; } ;
struct ipu_ic {struct ipu_ic_priv* priv; } ;


 int IPU_CONF_ROT_EN ;
 int ipu_module_enable (int ,int ) ;

__attribute__((used)) static void ipu_irt_enable(struct ipu_ic *ic)
{
 struct ipu_ic_priv *priv = ic->priv;

 if (!priv->irt_use_count)
  ipu_module_enable(priv->ipu, IPU_CONF_ROT_EN);

 priv->irt_use_count++;
}
