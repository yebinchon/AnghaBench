
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ads7846 {TYPE_1__* spi; int reg; } ;
struct TYPE_2__ {int dev; } ;


 int ads7846_restart (struct ads7846*) ;
 int dev_err (int *,char*,int) ;
 int regulator_enable (int ) ;

__attribute__((used)) static void __ads7846_enable(struct ads7846 *ts)
{
 int error;

 error = regulator_enable(ts->reg);
 if (error != 0)
  dev_err(&ts->spi->dev, "Failed to enable supply: %d\n", error);

 ads7846_restart(ts);
}
