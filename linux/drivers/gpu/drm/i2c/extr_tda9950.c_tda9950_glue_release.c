
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda9950_priv {int open; TYPE_1__* glue; } ;
struct TYPE_2__ {int data; int (* release ) (int ) ;} ;


 int stub1 (int ) ;

__attribute__((used)) static void tda9950_glue_release(struct tda9950_priv *priv)
{
 priv->open = 0;

 if (priv->glue && priv->glue->release)
  priv->glue->release(priv->glue->data);
}
