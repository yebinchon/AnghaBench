
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int pport; int (* f_xgxs_reset ) (int ) ;} ;


 int EPB_GLOBAL_WR ;
 int RXLSPPM (int ) ;
 int ibsd_mod_allchnls (struct qib_devdata*,int,int,int) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int stub1 (int ) ;
 int udelay (int) ;

void toggle_7220_rclkrls(struct qib_devdata *dd)
{
 int loc = RXLSPPM(0) | EPB_GLOBAL_WR;
 int ret;

 ret = ibsd_mod_allchnls(dd, loc, 0, 0x80);
 if (ret < 0)
  qib_dev_err(dd, "RCLKRLS failed to clear D7\n");
 else {
  udelay(1);
  ibsd_mod_allchnls(dd, loc, 0x80, 0x80);
 }

 udelay(1);
 ret = ibsd_mod_allchnls(dd, loc, 0, 0x80);
 if (ret < 0)
  qib_dev_err(dd, "RCLKRLS failed to clear D7\n");
 else {
  udelay(1);
  ibsd_mod_allchnls(dd, loc, 0x80, 0x80);
 }

 dd->f_xgxs_reset(dd->pport);
}
