
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct drxuio_data {int uio; int value; } ;
struct drxj_data {int uio_irqn_mode; int has_irqn; int uio_gpio_mode; int has_gpio; int uio_sma_rx_mode; int has_smarx; int uio_sma_tx_mode; int has_smatx; } ;
struct drx_demod_instance {int my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;






 int DRX_UIO_MODE_FIRMWARE_SAW ;
 int DRX_UIO_MODE_READWRITE ;
 int EINVAL ;
 int EIO ;
 int SIO_PDR_GPIO_CFG__A ;
 int SIO_PDR_IRQN_CFG__A ;
 int SIO_PDR_SMA_RX_CFG__A ;
 int SIO_PDR_SMA_TX_CFG__A ;
 int SIO_PDR_UIO_OUT_HI__A ;
 int SIO_PDR_UIO_OUT_LO__A ;
 int SIO_TOP_COMM_KEY_KEY ;
 int SIO_TOP_COMM_KEY__A ;
 int drxj_dap_read_reg16 (int ,int ,int*,int ) ;
 int drxj_dap_write_reg16 (int ,int ,int,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int
ctrl_uio_write(struct drx_demod_instance *demod, struct drxuio_data *uio_data)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 int rc;
 u16 pin_cfg_value = 0;
 u16 value = 0;

 if ((uio_data == ((void*)0)) || (demod == ((void*)0)))
  return -EINVAL;

 ext_attr = (struct drxj_data *) demod->my_ext_attr;


 rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY_KEY, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 switch (uio_data->uio) {

 case 131:

  if (!ext_attr->has_smatx)
   return -EIO;
  if ((ext_attr->uio_sma_tx_mode != DRX_UIO_MODE_READWRITE)
      && (ext_attr->uio_sma_tx_mode != DRX_UIO_MODE_FIRMWARE_SAW)) {
   return -EIO;
  }
  pin_cfg_value = 0;

  pin_cfg_value |= 0x0113;




  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_SMA_TX_CFG__A, pin_cfg_value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }


  rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, &value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  if (!uio_data->value)
   value &= 0x7FFF;
  else
   value |= 0x8000;


  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 130:

  if (!ext_attr->has_smarx)
   return -EIO;
  if (ext_attr->uio_sma_rx_mode != DRX_UIO_MODE_READWRITE)
   return -EIO;

  pin_cfg_value = 0;

  pin_cfg_value |= 0x0113;




  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_SMA_RX_CFG__A, pin_cfg_value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }


  rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, &value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  if (!uio_data->value)
   value &= 0xBFFF;
  else
   value |= 0x4000;


  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 129:

  if (!ext_attr->has_gpio)
   return -EIO;
  if (ext_attr->uio_gpio_mode != DRX_UIO_MODE_READWRITE)
   return -EIO;

  pin_cfg_value = 0;

  pin_cfg_value |= 0x0113;




  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_GPIO_CFG__A, pin_cfg_value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }


  rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_HI__A, &value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  if (!uio_data->value)
   value &= 0xFFFB;
  else
   value |= 0x0004;


  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_HI__A, value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  break;

 case 128:

  if (!ext_attr->has_irqn)
   return -EIO;

  if (ext_attr->uio_irqn_mode != DRX_UIO_MODE_READWRITE)
   return -EIO;

  pin_cfg_value = 0;

  pin_cfg_value |= 0x0113;




  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_IRQN_CFG__A, pin_cfg_value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }


  rc = drxj_dap_read_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, &value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  if (uio_data->value == 0)
   value &= 0xEFFF;
  else
   value |= 0x1000;


  rc = drxj_dap_write_reg16(demod->my_i2c_dev_addr, SIO_PDR_UIO_OUT_LO__A, value, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
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
