
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {int regulators; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void silead_disable_regulator(void *arg)
{
 struct silead_ts_data *data = arg;

 regulator_bulk_disable(ARRAY_SIZE(data->regulators), data->regulators);
}
