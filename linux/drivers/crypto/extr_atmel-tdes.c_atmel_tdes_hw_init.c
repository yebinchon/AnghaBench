
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int flags; scalar_t__ err; int iclk; } ;


 int TDES_CR ;
 int TDES_CR_SWRST ;
 int TDES_FLAGS_INIT ;
 int atmel_tdes_write (struct atmel_tdes_dev*,int ,int ) ;
 int clk_prepare_enable (int ) ;

__attribute__((used)) static int atmel_tdes_hw_init(struct atmel_tdes_dev *dd)
{
 int err;

 err = clk_prepare_enable(dd->iclk);
 if (err)
  return err;

 if (!(dd->flags & TDES_FLAGS_INIT)) {
  atmel_tdes_write(dd, TDES_CR, TDES_CR_SWRST);
  dd->flags |= TDES_FLAGS_INIT;
  dd->err = 0;
 }

 return 0;
}
