
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qib_devdata {int eep_lock; int twsi_eeprom_dev; } ;


 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_twsi_blk_rd (struct qib_devdata*,int ,int ,void*,int) ;
 int qib_twsi_reset (struct qib_devdata*) ;

int qib_eeprom_read(struct qib_devdata *dd, u8 eeprom_offset,
      void *buff, int len)
{
 int ret;

 ret = mutex_lock_interruptible(&dd->eep_lock);
 if (!ret) {
  ret = qib_twsi_reset(dd);
  if (ret)
   qib_dev_err(dd, "EEPROM Reset for read failed\n");
  else
   ret = qib_twsi_blk_rd(dd, dd->twsi_eeprom_dev,
           eeprom_offset, buff, len);
  mutex_unlock(&dd->eep_lock);
 }

 return ret;
}
