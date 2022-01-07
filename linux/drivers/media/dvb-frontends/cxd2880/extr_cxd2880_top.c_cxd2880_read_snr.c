
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
 int cxd2880_tnrdmd_dvbt2_mon_snr (int *,int*) ;
 int cxd2880_tnrdmd_dvbt_mon_snr (int *,int*) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*,int) ;
 int pr_err (char*) ;

__attribute__((used)) static int cxd2880_read_snr(struct dvb_frontend *fe, u16 *snr)
{
 int ret;
 int snrvalue = 0;
 struct cxd2880_priv *priv = ((void*)0);
 struct dtv_frontend_properties *c = ((void*)0);

 if (!fe || !snr) {
  pr_err("invalid arg\n");
  return -EINVAL;
 }

 priv = fe->demodulator_priv;
 c = &fe->dtv_property_cache;

 mutex_lock(priv->spi_mutex);
 if (c->delivery_system == SYS_DVBT) {
  ret = cxd2880_tnrdmd_dvbt_mon_snr(&priv->tnrdmd,
        &snrvalue);
 } else if (c->delivery_system == SYS_DVBT2) {
  ret = cxd2880_tnrdmd_dvbt2_mon_snr(&priv->tnrdmd,
         &snrvalue);
 } else {
  pr_err("invalid system\n");
  mutex_unlock(priv->spi_mutex);
  return -EINVAL;
 }
 mutex_unlock(priv->spi_mutex);

 if (snrvalue < 0)
  snrvalue = 0;
 *snr = snrvalue;

 if (ret)
  pr_debug("ret = %d\n", ret);

 return ret;
}
