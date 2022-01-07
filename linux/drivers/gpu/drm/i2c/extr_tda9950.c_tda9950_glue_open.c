
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda9950_priv {int open; TYPE_1__* glue; } ;
struct TYPE_2__ {int (* open ) (int ) ;int data; } ;


 int stub1 (int ) ;

__attribute__((used)) static int tda9950_glue_open(struct tda9950_priv *priv)
{
 int ret = 0;

 if (priv->glue && priv->glue->open)
  ret = priv->glue->open(priv->glue->data);

 priv->open = 1;

 return ret;
}
