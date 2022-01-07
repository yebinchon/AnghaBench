
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct goodix_ts_data {int avdd28; int vddio; } ;


 int regulator_disable (int ) ;

__attribute__((used)) static void goodix_disable_regulators(void *arg)
{
 struct goodix_ts_data *ts = arg;

 regulator_disable(ts->vddio);
 regulator_disable(ts->avdd28);
}
