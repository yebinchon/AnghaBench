
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9950_priv {int dummy; } ;
struct cec_adapter {struct tda9950_priv* priv; } ;


 int tda9950_open (struct tda9950_priv*) ;
 int tda9950_release (struct tda9950_priv*) ;

__attribute__((used)) static int tda9950_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct tda9950_priv *priv = adap->priv;

 if (!enable) {
  tda9950_release(priv);
  return 0;
 } else {
  return tda9950_open(priv);
 }
}
