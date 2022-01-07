
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_tdes_dev {int dummy; } ;


 int atmel_tdes_write (struct atmel_tdes_dev*,int,int) ;

__attribute__((used)) static void atmel_tdes_write_n(struct atmel_tdes_dev *dd, u32 offset,
     u32 *value, int count)
{
 for (; count--; value++, offset += 4)
  atmel_tdes_write(dd, offset, *value);
}
