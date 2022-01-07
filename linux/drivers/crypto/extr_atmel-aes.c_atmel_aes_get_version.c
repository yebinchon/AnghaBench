
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int dummy; } ;


 int AES_HW_VERSION ;
 int atmel_aes_read (struct atmel_aes_dev*,int ) ;

__attribute__((used)) static inline unsigned int atmel_aes_get_version(struct atmel_aes_dev *dd)
{
 return atmel_aes_read(dd, AES_HW_VERSION) & 0x00000fff;
}
