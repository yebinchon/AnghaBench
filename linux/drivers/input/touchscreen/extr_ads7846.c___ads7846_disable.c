
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ads7846 {int reg; } ;


 int ads7846_stop (struct ads7846*) ;
 int regulator_disable (int ) ;

__attribute__((used)) static void __ads7846_disable(struct ads7846 *ts)
{
 ads7846_stop(ts);
 regulator_disable(ts->reg);





}
