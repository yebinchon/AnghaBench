
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct dtv_frontend_properties {scalar_t__ delivery_system; } ;
struct dvb_frontend {struct dtv_frontend_properties dtv_property_cache; struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_priv {int spi_mutex; int tnrdmd; } ;


 int EINVAL ;
 scalar_t__ SYS_DVBT ;
 scalar_t__ SYS_DVBT2 ;
 int clamp (int,int,int) ;
 int cxd2880_tnrdmd_mon_rf_lvl (int *,int*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*,...) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_read_signal_strength(struct dvb_frontend *fe,
     u16 *strength)
{
 int ret;
 struct cxd2880_priv *priv = ((void*)0);
 struct dtv_frontend_properties *c = ((void*)0);
 int level = 0;

 if (!fe || !strength) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 priv = fe->demodulator_priv;
 c = &fe->dtv_property_cache;

 mutex_lock(priv->spi_mutex);
 if (c->delivery_system == SYS_DVBT ||
     c->delivery_system == SYS_DVBT2) {
  ret = cxd2880_tnrdmd_mon_rf_lvl(&priv->tnrdmd, &level);
 } else {
  pr_debug("invalid system\n");
  mutex_unlock(priv->spi_mutex);
  return -EINVAL;
 }
 mutex_unlock(priv->spi_mutex);

 level /= 125;





 level = clamp(level, -840, -240);

 *strength = ((level + 840) * 0xffff) / (-240 + 840);

 if (ret)
  pr_debug("ret = %d\n", ret);

 return ret;
}
