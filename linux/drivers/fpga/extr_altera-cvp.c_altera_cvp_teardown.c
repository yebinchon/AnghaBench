
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fpga_manager {int dev; struct altera_cvp_conf* priv; } ;
struct fpga_image_info {int dummy; } ;
struct altera_cvp_conf {TYPE_1__* priv; } ;
struct TYPE_2__ {int poll_time_us; int (* switch_clk ) (struct altera_cvp_conf*) ;} ;


 int VSE_CVP_PROG_CTRL ;
 int VSE_CVP_PROG_CTRL_CONFIG ;
 int VSE_CVP_PROG_CTRL_START_XFER ;
 int VSE_CVP_STATUS_CFG_RDY ;
 int altera_cvp_wait_status (struct altera_cvp_conf*,int ,int ,int ) ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int *) ;
 int altera_write_config_dword (struct altera_cvp_conf*,int ,int ) ;
 int dev_err (int *,char*) ;
 int stub1 (struct altera_cvp_conf*) ;

__attribute__((used)) static int altera_cvp_teardown(struct fpga_manager *mgr,
          struct fpga_image_info *info)
{
 struct altera_cvp_conf *conf = mgr->priv;
 int ret;
 u32 val;


 altera_read_config_dword(conf, VSE_CVP_PROG_CTRL, &val);
 val &= ~VSE_CVP_PROG_CTRL_START_XFER;
 altera_write_config_dword(conf, VSE_CVP_PROG_CTRL, val);


 val &= ~VSE_CVP_PROG_CTRL_CONFIG;
 altera_write_config_dword(conf, VSE_CVP_PROG_CTRL, val);






 if (conf->priv->switch_clk)
  conf->priv->switch_clk(conf);


 ret = altera_cvp_wait_status(conf, VSE_CVP_STATUS_CFG_RDY, 0,
         conf->priv->poll_time_us);
 if (ret)
  dev_err(&mgr->dev, "CFG_RDY == 0 timeout\n");

 return ret;
}
