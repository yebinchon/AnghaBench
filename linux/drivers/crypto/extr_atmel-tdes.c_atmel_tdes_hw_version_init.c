
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tdes_dev {int iclk; int hw_version; int dev; } ;


 int atmel_tdes_get_version (struct atmel_tdes_dev*) ;
 int atmel_tdes_hw_init (struct atmel_tdes_dev*) ;
 int clk_disable_unprepare (int ) ;
 int dev_info (int ,char*,int ) ;

__attribute__((used)) static void atmel_tdes_hw_version_init(struct atmel_tdes_dev *dd)
{
 atmel_tdes_hw_init(dd);

 dd->hw_version = atmel_tdes_get_version(dd);

 dev_info(dd->dev,
   "version: 0x%x\n", dd->hw_version);

 clk_disable_unprepare(dd->iclk);
}
