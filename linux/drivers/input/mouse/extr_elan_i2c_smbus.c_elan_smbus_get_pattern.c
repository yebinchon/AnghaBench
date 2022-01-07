
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct i2c_client {int dummy; } ;



__attribute__((used)) static int elan_smbus_get_pattern(struct i2c_client *client, u8 *pattern)
{
 *pattern = 0;
 return 0;
}
