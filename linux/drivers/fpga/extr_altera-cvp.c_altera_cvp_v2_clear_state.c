
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct altera_cvp_conf {TYPE_1__* priv; TYPE_2__* pci_dev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int poll_time_us; } ;


 int VSE_CVP_PROG_CTRL ;
 int VSE_CVP_PROG_CTRL_MASK ;
 int VSE_CVP_STATUS_CFG_RDY ;
 int altera_cvp_wait_status (struct altera_cvp_conf*,int ,int ,int ) ;
 int altera_read_config_dword (struct altera_cvp_conf*,int ,int *) ;
 int altera_write_config_dword (struct altera_cvp_conf*,int ,int ) ;
 int dev_err (int *,char*) ;

__attribute__((used)) static int altera_cvp_v2_clear_state(struct altera_cvp_conf *conf)
{
 u32 val;
 int ret;


 ret = altera_read_config_dword(conf, VSE_CVP_PROG_CTRL, &val);
 if (ret) {
  dev_err(&conf->pci_dev->dev,
   "Error reading CVP Program Control Register\n");
  return ret;
 }

 val &= ~VSE_CVP_PROG_CTRL_MASK;
 ret = altera_write_config_dword(conf, VSE_CVP_PROG_CTRL, val);
 if (ret) {
  dev_err(&conf->pci_dev->dev,
   "Error writing CVP Program Control Register\n");
  return ret;
 }

 return altera_cvp_wait_status(conf, VSE_CVP_STATUS_CFG_RDY, 0,
          conf->priv->poll_time_us);
}
