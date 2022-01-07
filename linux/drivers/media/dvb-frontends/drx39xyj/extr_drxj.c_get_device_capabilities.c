
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {int has_lna; int has_ntsc; int has_btsc; int has_oob; int has_smatx; int has_smarx; int has_gpio; int has_irqn; scalar_t__ mfx; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; scalar_t__ my_ext_attr; scalar_t__ my_common_attr; } ;
struct drx_common_attr {int osc_clock_freq; } ;


 int EIO ;
 int SIO_PDR_OHW_CFG_FREF_SEL__M ;
 int SIO_PDR_OHW_CFG__A ;
 int SIO_PDR_UIO_IN_HI__A ;
 int SIO_TOP_COMM_KEY_KEY ;
 int SIO_TOP_COMM_KEY__A ;
 int SIO_TOP_COMM_KEY__PRE ;
 int SIO_TOP_JTAGID_LO__A ;
 int drxdap_fasi_read_reg32 (struct i2c_device_addr*,int ,int*,int ) ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int*,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int get_device_capabilities(struct drx_demod_instance *demod)
{
 struct drx_common_attr *common_attr = (struct drx_common_attr *) (((void*)0));
 struct drxj_data *ext_attr = (struct drxj_data *) ((void*)0);
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)(((void*)0));
 u16 sio_pdr_ohw_cfg = 0;
 u32 sio_top_jtagid_lo = 0;
 u16 bid = 0;
 int rc;

 common_attr = (struct drx_common_attr *) demod->my_common_attr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 dev_addr = demod->my_i2c_dev_addr;

 rc = drxj_dap_write_reg16(dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY_KEY, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_read_reg16(dev_addr, SIO_PDR_OHW_CFG__A, &sio_pdr_ohw_cfg, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 rc = drxj_dap_write_reg16(dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY__PRE, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }

 switch ((sio_pdr_ohw_cfg & SIO_PDR_OHW_CFG_FREF_SEL__M)) {
 case 0:

  break;
 case 1:

  common_attr->osc_clock_freq = 27000;
  break;
 case 2:

  common_attr->osc_clock_freq = 20250;
  break;
 case 3:

  common_attr->osc_clock_freq = 4000;
  break;
 default:
  return -EIO;
 }





 rc = drxdap_fasi_read_reg32(dev_addr, SIO_TOP_JTAGID_LO__A, &sio_top_jtagid_lo, 0);
 if (rc != 0) {
  pr_err("error %d\n", rc);
  goto rw_error;
 }
 ext_attr->mfx = (u8) ((sio_top_jtagid_lo >> 29) & 0xF);

 switch ((sio_top_jtagid_lo >> 12) & 0xFF) {
 case 0x31:
  rc = drxj_dap_write_reg16(dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY_KEY, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  rc = drxj_dap_read_reg16(dev_addr, SIO_PDR_UIO_IN_HI__A, &bid, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  bid = (bid >> 10) & 0xf;
  rc = drxj_dap_write_reg16(dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY__PRE, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }

  ext_attr->has_lna = 1;
  ext_attr->has_ntsc = 0;
  ext_attr->has_btsc = 0;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 0;
  ext_attr->has_gpio = 0;
  ext_attr->has_irqn = 0;
  break;
 case 0x33:
  ext_attr->has_lna = 0;
  ext_attr->has_ntsc = 0;
  ext_attr->has_btsc = 0;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 0;
  ext_attr->has_gpio = 0;
  ext_attr->has_irqn = 0;
  break;
 case 0x45:
  ext_attr->has_lna = 1;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 0;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 0;
  break;
 case 0x46:
  ext_attr->has_lna = 0;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 0;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 0;
  break;
 case 0x41:
  ext_attr->has_lna = 1;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 1;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 0;
  break;
 case 0x43:
  ext_attr->has_lna = 0;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 1;
  ext_attr->has_oob = 0;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 0;
  break;
 case 0x32:
  ext_attr->has_lna = 1;
  ext_attr->has_ntsc = 0;
  ext_attr->has_btsc = 0;
  ext_attr->has_oob = 1;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 1;
  break;
 case 0x34:
  ext_attr->has_lna = 0;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 1;
  ext_attr->has_oob = 1;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 1;
  break;
 case 0x42:
  ext_attr->has_lna = 1;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 1;
  ext_attr->has_oob = 1;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 1;
  break;
 case 0x44:
  ext_attr->has_lna = 0;
  ext_attr->has_ntsc = 1;
  ext_attr->has_btsc = 1;
  ext_attr->has_oob = 1;
  ext_attr->has_smatx = 1;
  ext_attr->has_smarx = 1;
  ext_attr->has_gpio = 1;
  ext_attr->has_irqn = 1;
  break;
 default:

  return -EIO;
  break;
 }

 return 0;
rw_error:
 return rc;
}
