
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct dvb_frontend_ops {int dummy; } ;
struct dvb_frontend {struct cxd2880_priv* demodulator_priv; int ops; } ;
struct TYPE_6__ {int (* write_reg ) (TYPE_1__*,int ,int,int) ;int (* read_regs ) (TYPE_1__*,int ,int,scalar_t__*,int) ;} ;
struct TYPE_7__ {int spi; } ;
struct cxd2880_priv {TYPE_1__ regio; int cxd2880_spi; TYPE_3__ spi_device; int spi_mutex; int spi; } ;
struct cxd2880_config {int spi; int spi_mutex; } ;
typedef enum cxd2880_tnrdmd_chip_id { ____Placeholder_cxd2880_tnrdmd_chip_id } cxd2880_tnrdmd_chip_id ;


 int CXD2880_IO_TGT_SYS ;
 int CXD2880_SPI_MODE_0 ;
 int CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X ;
 int CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11 ;
 int CXD2880_TNRDMD_CHIP_ID_UNKNOWN ;
 int CXD2880_TNRDMD_DRIVER_VERSION ;
 int GFP_KERNEL ;
 int cxd2880_dvbt_t2_ops ;
 int cxd2880_io_spi_create (TYPE_1__*,int *,int ) ;
 int cxd2880_spi_device_create_spi (int *,TYPE_3__*) ;
 int cxd2880_spi_device_initialize (TYPE_3__*,int ,int) ;
 int kfree (struct cxd2880_priv*) ;
 struct cxd2880_priv* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_err (char*,...) ;
 int pr_info (char*,int ) ;
 int stub1 (TYPE_1__*,int ,int,int) ;
 int stub2 (TYPE_1__*,int ,int,scalar_t__*,int) ;

struct dvb_frontend *cxd2880_attach(struct dvb_frontend *fe,
        struct cxd2880_config *cfg)
{
 int ret;
 enum cxd2880_tnrdmd_chip_id chipid =
     CXD2880_TNRDMD_CHIP_ID_UNKNOWN;
 static struct cxd2880_priv *priv;
 u8 data = 0;

 if (!fe) {
  pr_err("invalid arg.\n");
  return ((void*)0);
 }

 priv = kzalloc(sizeof(struct cxd2880_priv), GFP_KERNEL);
 if (!priv)
  return ((void*)0);

 priv->spi = cfg->spi;
 priv->spi_mutex = cfg->spi_mutex;
 priv->spi_device.spi = cfg->spi;

 memcpy(&fe->ops, &cxd2880_dvbt_t2_ops,
        sizeof(struct dvb_frontend_ops));

 ret = cxd2880_spi_device_initialize(&priv->spi_device,
         CXD2880_SPI_MODE_0,
         55000000);
 if (ret) {
  pr_err("spi_device_initialize failed. %d\n", ret);
  kfree(priv);
  return ((void*)0);
 }

 ret = cxd2880_spi_device_create_spi(&priv->cxd2880_spi,
         &priv->spi_device);
 if (ret) {
  pr_err("spi_device_create_spi failed. %d\n", ret);
  kfree(priv);
  return ((void*)0);
 }

 ret = cxd2880_io_spi_create(&priv->regio, &priv->cxd2880_spi, 0);
 if (ret) {
  pr_err("io_spi_create failed. %d\n", ret);
  kfree(priv);
  return ((void*)0);
 }
 ret = priv->regio.write_reg(&priv->regio,
        CXD2880_IO_TGT_SYS, 0x00, 0x00);
 if (ret) {
  pr_err("set bank to 0x00 failed.\n");
  kfree(priv);
  return ((void*)0);
 }
 ret = priv->regio.read_regs(&priv->regio,
        CXD2880_IO_TGT_SYS, 0xfd, &data, 1);
 if (ret) {
  pr_err("read chip id failed.\n");
  kfree(priv);
  return ((void*)0);
 }

 chipid = (enum cxd2880_tnrdmd_chip_id)data;
 if (chipid != CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_0X &&
     chipid != CXD2880_TNRDMD_CHIP_ID_CXD2880_ES1_11) {
  pr_err("chip id invalid.\n");
  kfree(priv);
  return ((void*)0);
 }

 fe->demodulator_priv = priv;
 pr_info("CXD2880 driver version: Ver %s\n",
  CXD2880_TNRDMD_DRIVER_VERSION);

 return fe;
}
