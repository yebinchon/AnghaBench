
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int dummy; } ;


 int atmel_aes_complete (struct atmel_aes_dev*,int ) ;

__attribute__((used)) static int atmel_aes_transfer_complete(struct atmel_aes_dev *dd)
{
 return atmel_aes_complete(dd, 0);
}
