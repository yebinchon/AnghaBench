
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drxuio_cfg {int uio; int mode; } ;
struct drxj_data {int uio_irqn_mode; int has_irqn; int uio_gpio_mode; int has_gpio; int uio_sma_rx_mode; int has_smarx; int uio_sma_tx_mode; int has_smatx; } ;
struct drx_demod_instance {int my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;
 int EINVAL ;
 int EIO ;
 int SIO_PDR_GPIO_CFG__A ;
 int SIO_PDR_IRQN_CFG__A ;
 int SIO_PDR_SMA_RX_CFG__A ;
 int SIO_PDR_SMA_TX_CFG__A ;
 int SIO_TOP_COMM_KEY_KEY ;
 int SIO_TOP_COMM_KEY__A ;
 int drxj_dap_write_reg16 (int ,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int ctrl_set_uio_cfg(struct drx_demod_instance *demod, struct drxuio_cfg *uio_cfg)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 int rc;

 if ((uio_cfg == ((void*)0)) || (demod == ((void*)0)))
  return -EINVAL;

 ext_attr = (struct drxj_data *) demod->my_ext_attr;


 rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY_KEY, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 switch (uio_cfg->uio) {

 case 136:

  if (!ext_attr->has_smatx)
   return -EIO;
  switch (uio_cfg->mode) {
  case 129:
  case 130:
  case 128:
   ext_attr->uio_sma_tx_mode = uio_cfg->mode;
   break;
  case 132:
   ext_attr->uio_sma_tx_mode = uio_cfg->mode;

   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_SMA_TX_CFG__A, 0, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  default:
   return -EINVAL;
  }
  break;

 case 135:

  if (!ext_attr->has_smarx)
   return -EIO;
  switch (uio_cfg->mode) {
  case 131:
  case 128:
   ext_attr->uio_sma_rx_mode = uio_cfg->mode;
   break;
  case 132:
   ext_attr->uio_sma_rx_mode = uio_cfg->mode;

   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_SMA_RX_CFG__A, 0, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  default:
   return -EINVAL;
   break;
  }
  break;

 case 134:

  if (!ext_attr->has_gpio)
   return -EIO;
  switch (uio_cfg->mode) {
  case 131:
  case 128:
   ext_attr->uio_gpio_mode = uio_cfg->mode;
   break;
  case 132:
   ext_attr->uio_gpio_mode = uio_cfg->mode;

   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_GPIO_CFG__A, 0, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   break;
  default:
   return -EINVAL;
   break;
  }
  break;

 case 133:

  if (!ext_attr->has_irqn)
   return -EIO;
  switch (uio_cfg->mode) {
  case 128:
   ext_attr->uio_irqn_mode = uio_cfg->mode;
   break;
  case 132:

   rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_IRQN_CFG__A, 0, 0);
   if (rc != 0) {
    pr_err("error %d\n", rc);
    goto rw_error;
   }
   ext_attr->uio_irqn_mode = uio_cfg->mode;
   break;
  case 131:
  default:
   return -EINVAL;
   break;
  }
  break;

 default:
  return -EINVAL;
 }


 rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_TOP_COMM_KEY__A, 0x0000, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 return 0;
rw_error:
 return rc;
}
