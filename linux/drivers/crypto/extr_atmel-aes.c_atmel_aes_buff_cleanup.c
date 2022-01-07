
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {scalar_t__ buf; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void atmel_aes_buff_cleanup(struct atmel_aes_dev *dd)
{
 free_page((unsigned long)dd->buf);
}
