
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int dummy; } ;


 int atmel_aes_write (struct atmel_aes_dev*,int,int const) ;

__attribute__((used)) static void atmel_aes_write_n(struct atmel_aes_dev *dd, u32 offset,
         const u32 *value, int count)
{
 for (; count--; value++, offset += 4)
  atmel_aes_write(dd, offset, *value);
}
