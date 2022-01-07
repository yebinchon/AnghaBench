
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fpga_manager {int dev; struct altera_cvp_conf* priv; } ;
struct fpga_image_info {int dummy; } ;
struct altera_cvp_conf {TYPE_1__* priv; } ;
struct TYPE_2__ {int user_time_us; } ;


 int EPROTO ;
 int VSE_CVP_MODE_CTRL ;
 int VSE_CVP_MODE_CTRL_CVP_MODE ;
 int VSE_CVP_MODE_CTRL_HIP_CLK_SEL ;
 int VSE_CVP_STATUS_PLD_CLK_IN_USE ;
 int VSE_CVP_STATUS_USERMODE ;
 int VSE_UNCOR_ERR_CVP_CFG_ERR ;
 int VSE_UNCOR_ERR_STATUS ;
 int altera_cvp_teardown (struct fpga_manager*,struct fpga_image_info*) ;
 int altera_cvp_wait_status (struct altera_cvp_conf*,int,int,int ) ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int*) ;
 int altera_write_config_dword (struct altera_cvp_conf*,int ,int) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int altera_cvp_write_complete(struct fpga_manager *mgr,
         struct fpga_image_info *info)
{
 struct altera_cvp_conf *conf = mgr->priv;
 u32 mask, val;
 int ret;

 ret = altera_cvp_teardown(mgr, info);
 if (ret)
  return ret;


 altera_read_config_dword(conf, VSE_UNCOR_ERR_STATUS, &val);
 if (val & VSE_UNCOR_ERR_CVP_CFG_ERR) {
  dev_err(&mgr->dev, "detected CVP_CONFIG_ERROR_LATCHED!\n");
  return -EPROTO;
 }


 altera_read_config_dword(conf, VSE_CVP_MODE_CTRL, &val);
 val &= ~VSE_CVP_MODE_CTRL_HIP_CLK_SEL;
 val &= ~VSE_CVP_MODE_CTRL_CVP_MODE;
 altera_write_config_dword(conf, VSE_CVP_MODE_CTRL, val);


 mask = VSE_CVP_STATUS_PLD_CLK_IN_USE | VSE_CVP_STATUS_USERMODE;
 ret = altera_cvp_wait_status(conf, mask, mask,
         conf->priv->user_time_us);
 if (ret)
  dev_err(&mgr->dev, "PLD_CLK_IN_USE|USERMODE timeout\n");

 return ret;
}
