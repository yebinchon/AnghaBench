
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qib_devdata {unsigned long gpio_scl_num; int (* f_gpio_mod ) (struct qib_devdata*,int ,int,int) ;} ;


 int SCL_WAIT_USEC ;
 int i2c_wait_for_writes (struct qib_devdata*) ;
 int qib_dev_err (struct qib_devdata*,char*,int) ;
 int stub1 (struct qib_devdata*,int ,int,int) ;
 int stub2 (struct qib_devdata*,int ,int,int) ;
 int udelay (int) ;

__attribute__((used)) static void scl_out(struct qib_devdata *dd, u8 bit)
{
 u32 mask;

 udelay(1);

 mask = 1UL << dd->gpio_scl_num;


 dd->f_gpio_mod(dd, 0, bit ? 0 : mask, mask);





 if (!bit)
  udelay(2);
 else {
  int rise_usec;

  for (rise_usec = SCL_WAIT_USEC; rise_usec > 0; rise_usec -= 2) {
   if (mask & dd->f_gpio_mod(dd, 0, 0, 0))
    break;
   udelay(2);
  }
  if (rise_usec <= 0)
   qib_dev_err(dd, "SCL interface stuck low > %d uSec\n",
        SCL_WAIT_USEC);
 }
 i2c_wait_for_writes(dd);
}
