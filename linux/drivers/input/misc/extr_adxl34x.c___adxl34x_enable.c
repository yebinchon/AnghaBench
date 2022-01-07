
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int power_mode; } ;
struct adxl34x {TYPE_1__ pdata; } ;


 int AC_WRITE (struct adxl34x*,int ,int) ;
 int PCTL_MEASURE ;
 int POWER_CTL ;

__attribute__((used)) static void __adxl34x_enable(struct adxl34x *ac)
{
 AC_WRITE(ac, POWER_CTL, ac->pdata.power_mode | PCTL_MEASURE);
}
