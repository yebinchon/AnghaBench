
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int ETP_PRESSURE_OFFSET ;

__attribute__((used)) static int elan_smbus_get_pressure_adjustment(struct i2c_client *client,
           int *adjustment)
{
 *adjustment = ETP_PRESSURE_OFFSET;
 return 0;
}
