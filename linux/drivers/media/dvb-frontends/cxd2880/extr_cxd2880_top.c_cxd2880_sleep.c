
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int spi_mutex; int tnrdmd; } ;


 int EINVAL ;
 int cxd2880_tnrdmd_sleep (int *) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_sleep(struct dvb_frontend *fe)
{
 int ret;
 struct cxd2880_priv *priv = ((void*)0);

 if (!fe) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 priv = fe->demodulator_priv;

 mutex_lock(priv->spi_mutex);
 ret = cxd2880_tnrdmd_sleep(&priv->tnrdmd);
 mutex_unlock(priv->spi_mutex);

 pr_debug("tnrdmd_sleep ret %d\n", ret);

 return ret;
}
