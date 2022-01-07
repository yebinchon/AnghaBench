
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_priv {int adap; } ;


 int cec_delete_adapter (int ) ;

__attribute__((used)) static void tda9950_cec_del(void *data)
{
 struct tda9950_priv *priv = data;

 cec_delete_adapter(priv->adap);
}
