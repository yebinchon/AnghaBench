
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct brcmstb_i2c_dev {int adapter; } ;


 int i2c_del_adapter (int *) ;
 struct brcmstb_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int brcmstb_i2c_remove(struct platform_device *pdev)
{
 struct brcmstb_i2c_dev *dev = platform_get_drvdata(pdev);

 i2c_del_adapter(&dev->adapter);
 return 0;
}
