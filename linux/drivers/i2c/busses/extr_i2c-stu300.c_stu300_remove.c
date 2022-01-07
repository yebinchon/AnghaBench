
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stu300_dev {scalar_t__ virtbase; int adapter; } ;
struct platform_device {int dummy; } ;


 scalar_t__ I2C_CR ;
 int i2c_del_adapter (int *) ;
 struct stu300_dev* platform_get_drvdata (struct platform_device*) ;
 int stu300_wr8 (int,scalar_t__) ;

__attribute__((used)) static int stu300_remove(struct platform_device *pdev)
{
 struct stu300_dev *dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&dev->adapter);

 stu300_wr8(0x00, dev->virtbase + I2C_CR);
 return 0;
}
