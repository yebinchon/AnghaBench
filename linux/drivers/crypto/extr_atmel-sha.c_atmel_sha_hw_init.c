
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int flags; scalar_t__ err; int iclk; } ;


 int SHA_CR ;
 int SHA_CR_SWRST ;
 int SHA_FLAGS_INIT ;
 int atmel_sha_write (struct atmel_sha_dev*,int ,int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static int atmel_sha_hw_init(struct atmel_sha_dev *dd)
{
 int err;

 err = clk_enable(dd->iclk);
 if (err)
  return err;

 if (!(SHA_FLAGS_INIT & dd->flags)) {
  atmel_sha_write(dd, SHA_CR, SHA_CR_SWRST);
  dd->flags |= SHA_FLAGS_INIT;
  dd->err = 0;
 }

 return 0;
}
