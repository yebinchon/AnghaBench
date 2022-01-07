
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_sha_dev {int iclk; int hw_version; int dev; } ;


 int atmel_sha_get_version (struct atmel_sha_dev*) ;
 int atmel_sha_hw_init (struct atmel_sha_dev*) ;
 int clk_disable (int ) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static void atmel_sha_hw_version_init(struct atmel_sha_dev *dd)
{
 atmel_sha_hw_init(dd);

 dd->hw_version = atmel_sha_get_version(dd);

 dev_info(dd->dev,
   "version: 0x%x\n", dd->hw_version);

 clk_disable(dd->iclk);
}
