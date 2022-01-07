
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int dummy; } ;


 int kfree (struct cxd2880_priv*) ;
 int pr_err (char*) ;

__attribute__((used)) static void cxd2880_release(struct dvb_frontend *fe)
{
 struct cxd2880_priv *priv = ((void*)0);

 if (!fe) {
  pr_err("invalid arg.\n");
  return;
 }
 priv = fe->demodulator_priv;
 kfree(priv);
}
