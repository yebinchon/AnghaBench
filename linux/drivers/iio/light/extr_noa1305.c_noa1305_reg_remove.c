
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noa1305_priv {int vin_reg; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void noa1305_reg_remove(void *data)
{
 struct noa1305_priv *priv = data;

 regulator_disable(priv->vin_reg);
}
