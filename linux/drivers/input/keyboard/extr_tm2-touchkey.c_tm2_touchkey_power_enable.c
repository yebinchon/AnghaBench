
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm2_touchkey_data {int regulators; } ;


 int ARRAY_SIZE (int ) ;
 int msleep (int) ;
 int regulator_bulk_enable (int ,int ) ;

__attribute__((used)) static int tm2_touchkey_power_enable(struct tm2_touchkey_data *touchkey)
{
 int error;

 error = regulator_bulk_enable(ARRAY_SIZE(touchkey->regulators),
          touchkey->regulators);
 if (error)
  return error;


 msleep(150);

 return 0;
}
