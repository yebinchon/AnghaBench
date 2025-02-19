
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxj_data {scalar_t__ mpeg_start_width; } ;
struct drx_demod_instance {struct drx_common_attr* my_common_attr; scalar_t__ my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct TYPE_2__ {int static_clk; int enable_parallel; } ;
struct drx_common_attr {TYPE_1__ mpeg_cfg; } ;


 scalar_t__ DRXJ_MPEG_START_WIDTH_8CLKCYC ;
 int FEC_OC_COMM_MB_CTL_ON ;
 int FEC_OC_COMM_MB__A ;
 int drxj_dap_read_reg16 (struct i2c_device_addr*,int ,int *,int ) ;
 int drxj_dap_write_reg16 (struct i2c_device_addr*,int ,int ,int ) ;
 int pr_err (char*,int) ;

__attribute__((used)) static int set_mpeg_start_width(struct drx_demod_instance *demod)
{
 struct drxj_data *ext_attr = (struct drxj_data *) (((void*)0));
 struct i2c_device_addr *dev_addr = (struct i2c_device_addr *)(((void*)0));
 struct drx_common_attr *common_attr = (struct drx_common_attr *) ((void*)0);
 int rc;
 u16 fec_oc_comm_mb = 0;

 dev_addr = demod->my_i2c_dev_addr;
 ext_attr = (struct drxj_data *) demod->my_ext_attr;
 common_attr = demod->my_common_attr;

 if ((common_attr->mpeg_cfg.static_clk == 1)
     && (common_attr->mpeg_cfg.enable_parallel == 0)) {
  rc = drxj_dap_read_reg16(dev_addr, FEC_OC_COMM_MB__A, &fec_oc_comm_mb, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
  fec_oc_comm_mb &= ~FEC_OC_COMM_MB_CTL_ON;
  if (ext_attr->mpeg_start_width == DRXJ_MPEG_START_WIDTH_8CLKCYC)
   fec_oc_comm_mb |= FEC_OC_COMM_MB_CTL_ON;
  rc = drxj_dap_write_reg16(dev_addr, FEC_OC_COMM_MB__A, fec_oc_comm_mb, 0);
  if (rc != 0) {
   pr_err("error %d\n", rc);
   goto rw_error;
  }
 }

 return 0;
rw_error:
 return rc;
}
