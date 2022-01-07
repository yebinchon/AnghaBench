
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda998x_priv {int * calib; } ;


 int gpiod_put (int *) ;

__attribute__((used)) static void tda998x_cec_hook_exit(void *data)
{
 struct tda998x_priv *priv = data;

 gpiod_put(priv->calib);
 priv->calib = ((void*)0);
}
