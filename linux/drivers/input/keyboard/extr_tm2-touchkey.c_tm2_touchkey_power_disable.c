
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm2_touchkey_data {int regulators; } ;


 int ARRAY_SIZE (int ) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void tm2_touchkey_power_disable(void *data)
{
 struct tm2_touchkey_data *touchkey = data;

 regulator_bulk_disable(ARRAY_SIZE(touchkey->regulators),
          touchkey->regulators);
}
