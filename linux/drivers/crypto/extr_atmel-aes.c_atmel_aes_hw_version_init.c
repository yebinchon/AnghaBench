
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_aes_dev {int iclk; int hw_version; int dev; } ;


 int atmel_aes_get_version (struct atmel_aes_dev*) ;
 int atmel_aes_hw_init (struct atmel_aes_dev*) ;
 int clk_disable (int ) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static int atmel_aes_hw_version_init(struct atmel_aes_dev *dd)
{
 int err;

 err = atmel_aes_hw_init(dd);
 if (err)
  return err;

 dd->hw_version = atmel_aes_get_version(dd);

 dev_info(dd->dev, "version: 0x%x\n", dd->hw_version);

 clk_disable(dd->iclk);
 return 0;
}
