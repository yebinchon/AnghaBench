
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct mpc85xx_l2_pdata {scalar_t__ l2_vbase; int irq; } ;
struct edac_device_ctl_info {struct mpc85xx_l2_pdata* pvt_info; } ;


 scalar_t__ EDAC_OPSTATE_INT ;
 scalar_t__ MPC85XX_L2_ERRDIS ;
 scalar_t__ MPC85XX_L2_ERRINTEN ;
 struct edac_device_ctl_info* dev_get_drvdata (int *) ;
 int edac_dbg (int ,char*) ;
 int edac_device_del_device (int *) ;
 int edac_device_free_ctl_info (struct edac_device_ctl_info*) ;
 scalar_t__ edac_op_state ;
 int irq_dispose_mapping (int ) ;
 int orig_l2_err_disable ;
 int out_be32 (scalar_t__,int ) ;

__attribute__((used)) static int mpc85xx_l2_err_remove(struct platform_device *op)
{
 struct edac_device_ctl_info *edac_dev = dev_get_drvdata(&op->dev);
 struct mpc85xx_l2_pdata *pdata = edac_dev->pvt_info;

 edac_dbg(0, "\n");

 if (edac_op_state == EDAC_OPSTATE_INT) {
  out_be32(pdata->l2_vbase + MPC85XX_L2_ERRINTEN, 0);
  irq_dispose_mapping(pdata->irq);
 }

 out_be32(pdata->l2_vbase + MPC85XX_L2_ERRDIS, orig_l2_err_disable);
 edac_device_del_device(&op->dev);
 edac_device_free_ctl_info(edac_dev);
 return 0;
}
