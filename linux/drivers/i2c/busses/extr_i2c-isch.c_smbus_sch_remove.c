
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int i2c_del_adapter (int *) ;
 int sch_adapter ;
 scalar_t__ sch_smba ;

__attribute__((used)) static int smbus_sch_remove(struct platform_device *pdev)
{
 if (sch_smba) {
  i2c_del_adapter(&sch_adapter);
  sch_smba = 0;
 }

 return 0;
}
