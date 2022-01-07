
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qib_devdata {int gpio_sda_num; int (* f_gpio_mod ) (struct qib_devdata*,int ,int ,int) ;} ;


 int i2c_wait_for_writes (struct qib_devdata*) ;
 int stub1 (struct qib_devdata*,int ,int ,int) ;
 int stub2 (struct qib_devdata*,int ,int ,int) ;

__attribute__((used)) static u8 sda_in(struct qib_devdata *dd, int wait)
{
 int bnum;
 u32 read_val, mask;

 bnum = dd->gpio_sda_num;
 mask = (1UL << bnum);

 dd->f_gpio_mod(dd, 0, 0, mask);
 read_val = dd->f_gpio_mod(dd, 0, 0, 0);
 if (wait)
  i2c_wait_for_writes(dd);
 return (read_val & mask) >> bnum;
}
