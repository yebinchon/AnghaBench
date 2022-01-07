
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adxl34x {int dummy; } ;


 int AC_WRITE (struct adxl34x*,int ,int ) ;
 int POWER_CTL ;

__attribute__((used)) static void __adxl34x_disable(struct adxl34x *ac)
{




 AC_WRITE(ac, POWER_CTL, 0);
}
