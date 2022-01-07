
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fpga_manager {int dev; struct altera_cvp_conf* priv; } ;
struct altera_cvp_conf {int dummy; } ;


 int EPROTO ;
 int VSE_CVP_STATUS ;
 int VSE_CVP_STATUS_CFG_ERR ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int*) ;
 int dev_err (int *,char*,size_t) ;

__attribute__((used)) static int altera_cvp_chk_error(struct fpga_manager *mgr, size_t bytes)
{
 struct altera_cvp_conf *conf = mgr->priv;
 u32 val;
 int ret;


 ret = altera_read_config_dword(conf, VSE_CVP_STATUS, &val);
 if (ret || (val & VSE_CVP_STATUS_CFG_ERR)) {
  dev_err(&mgr->dev, "CVP_CONFIG_ERROR after %zu bytes!\n",
   bytes);
  return -EPROTO;
 }
 return 0;
}
