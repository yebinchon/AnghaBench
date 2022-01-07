
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bu21013_ts {int regulator; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void bu21013_power_off(void *_ts)
{
 struct bu21013_ts *ts = _ts;

 regulator_disable(ts->regulator);
}
