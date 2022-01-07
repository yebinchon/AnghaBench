
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atmel_aes_dev {int dummy; } ;


 int atmel_aes_read (struct atmel_aes_dev*,int) ;

__attribute__((used)) static void atmel_aes_read_n(struct atmel_aes_dev *dd, u32 offset,
     u32 *value, int count)
{
 for (; count--; value++, offset += 4)
  *value = atmel_aes_read(dd, offset);
}
