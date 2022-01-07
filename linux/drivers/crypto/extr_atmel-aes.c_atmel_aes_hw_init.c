
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int iclk; } ;


 int AES_CR ;
 int AES_CR_SWRST ;
 int AES_MR ;
 int AES_MR_CKEY_OFFSET ;
 int atmel_aes_write (struct atmel_aes_dev*,int ,int) ;
 int clk_enable (int ) ;

__attribute__((used)) static int atmel_aes_hw_init(struct atmel_aes_dev *dd)
{
 int err;

 err = clk_enable(dd->iclk);
 if (err)
  return err;

 atmel_aes_write(dd, AES_CR, AES_CR_SWRST);
 atmel_aes_write(dd, AES_MR, 0xE << AES_MR_CKEY_OFFSET);

 return 0;
}
