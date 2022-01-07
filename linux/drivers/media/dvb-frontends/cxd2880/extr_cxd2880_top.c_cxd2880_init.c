
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct dvb_frontend {struct cxd2880_priv* demodulator_priv; } ;
struct cxd2880_tnrdmd_create_param {int en_internal_ldo; int xosc_cap; int xosc_i; int stationary_use; int xtal_share_type; int ts_output_if; } ;
struct TYPE_4__ {int * io; } ;
struct cxd2880_priv {int spi_mutex; TYPE_1__ tnrdmd; int regio; } ;


 int CXD2880_TNRDMD_CFG_TSPIN_CURRENT ;
 int CXD2880_TNRDMD_TSOUT_IF_SPI ;
 int CXD2880_TNRDMD_XTAL_SHARE_NONE ;
 int EINVAL ;
 int cxd2880_integ_init (TYPE_1__*) ;
 int cxd2880_tnrdmd_create (TYPE_1__*,int *,struct cxd2880_tnrdmd_create_param*) ;
 int cxd2880_tnrdmd_set_cfg (TYPE_1__*,int ,int) ;
 int mutex_lock (int ) ;
 int mutex_unlock (int ) ;
 int pr_debug (char*) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int) ;

__attribute__((used)) static int cxd2880_init(struct dvb_frontend *fe)
{
 int ret;
 struct cxd2880_priv *priv = ((void*)0);
 struct cxd2880_tnrdmd_create_param create_param;

 if (!fe) {
  pr_err("invalid arg.\n");
  return -EINVAL;
 }

 priv = fe->demodulator_priv;

 create_param.ts_output_if = CXD2880_TNRDMD_TSOUT_IF_SPI;
 create_param.xtal_share_type = CXD2880_TNRDMD_XTAL_SHARE_NONE;
 create_param.en_internal_ldo = 1;
 create_param.xosc_cap = 18;
 create_param.xosc_i = 8;
 create_param.stationary_use = 1;

 mutex_lock(priv->spi_mutex);
 if (priv->tnrdmd.io != &priv->regio) {
  ret = cxd2880_tnrdmd_create(&priv->tnrdmd,
         &priv->regio, &create_param);
  if (ret) {
   mutex_unlock(priv->spi_mutex);
   pr_info("cxd2880 tnrdmd create failed %d\n", ret);
   return ret;
  }
 }
 ret = cxd2880_integ_init(&priv->tnrdmd);
 if (ret) {
  mutex_unlock(priv->spi_mutex);
  pr_err("cxd2880 integ init failed %d\n", ret);
  return ret;
 }

 ret = cxd2880_tnrdmd_set_cfg(&priv->tnrdmd,
         CXD2880_TNRDMD_CFG_TSPIN_CURRENT,
         0x00);
 if (ret) {
  mutex_unlock(priv->spi_mutex);
  pr_err("cxd2880 set config failed %d\n", ret);
  return ret;
 }
 mutex_unlock(priv->spi_mutex);

 pr_debug("OK.\n");

 return ret;
}
