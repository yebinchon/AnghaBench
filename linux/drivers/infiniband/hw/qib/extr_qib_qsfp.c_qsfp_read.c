
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qib_pportdata {int port; scalar_t__ hw_pidx; struct qib_devdata* dd; } ;
struct qib_devdata {scalar_t__ twsi_eeprom_dev; int eep_lock; int (* f_gpio_mod ) (struct qib_devdata*,int,int,int) ;} ;


 int EIO ;
 int ENXIO ;
 scalar_t__ QIB_TWSI_NO_DEV ;
 int QSFP_DEV ;
 int QSFP_GPIO_LP_MODE ;
 int QSFP_GPIO_MOD_RST_N ;
 int QSFP_GPIO_MOD_SEL_N ;
 int QSFP_GPIO_PORT2_SHIFT ;
 int QSFP_MAX_RETRY ;
 int QSFP_PAGESIZE ;
 int msleep (int) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_dev_porterr (struct qib_devdata*,int ,char*,...) ;
 int qib_twsi_blk_rd (struct qib_devdata*,int ,int,int *,int) ;
 int qib_twsi_reset (struct qib_devdata*) ;
 int stub1 (struct qib_devdata*,int,int,int) ;
 int stub2 (struct qib_devdata*,int,int,int) ;
 int udelay (int) ;

__attribute__((used)) static int qsfp_read(struct qib_pportdata *ppd, int addr, void *bp, int len)
{
 struct qib_devdata *dd = ppd->dd;
 u32 out, mask;
 int ret, cnt, pass = 0;
 int stuck = 0;
 u8 *buff = bp;

 ret = mutex_lock_interruptible(&dd->eep_lock);
 if (ret)
  goto no_unlock;

 if (dd->twsi_eeprom_dev == QIB_TWSI_NO_DEV) {
  ret = -ENXIO;
  goto bail;
 }
 mask = QSFP_GPIO_MOD_SEL_N | QSFP_GPIO_MOD_RST_N | QSFP_GPIO_LP_MODE;
 out = QSFP_GPIO_MOD_RST_N | QSFP_GPIO_LP_MODE;
 if (ppd->hw_pidx) {
  mask <<= QSFP_GPIO_PORT2_SHIFT;
  out <<= QSFP_GPIO_PORT2_SHIFT;
 }

 dd->f_gpio_mod(dd, out, mask, mask);





 msleep(20);


 ret = qib_twsi_reset(dd);
 if (ret) {
  qib_dev_porterr(dd, ppd->port,
    "QSFP interface Reset for read failed\n");
  ret = -EIO;
  stuck = 1;
  goto deselect;
 }



 cnt = 0;
 while (cnt < len) {
  unsigned in_page;
  int wlen = len - cnt;

  in_page = addr % QSFP_PAGESIZE;
  if ((in_page + wlen) > QSFP_PAGESIZE)
   wlen = QSFP_PAGESIZE - in_page;
  ret = qib_twsi_blk_rd(dd, QSFP_DEV, addr, buff + cnt, wlen);

  if (ret && cnt == 0 && ++pass < QSFP_MAX_RETRY)
   continue;
  if (ret) {

   ret = -EIO;
   goto deselect;
  }
  addr += wlen;
  cnt += wlen;
 }
 ret = cnt;

deselect:





 udelay(10);

 dd->f_gpio_mod(dd, mask, mask, mask);






 if (stuck)
  qib_dev_err(dd, "QSFP interface bus stuck non-idle\n");

 if (pass >= QSFP_MAX_RETRY && ret)
  qib_dev_porterr(dd, ppd->port, "QSFP failed even retrying\n");
 else if (pass)
  qib_dev_porterr(dd, ppd->port, "QSFP retries: %d\n", pass);

 msleep(20);

bail:
 mutex_unlock(&dd->eep_lock);

no_unlock:
 return ret;
}
