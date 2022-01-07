
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct i2c_client {int dummy; } ;
struct adt7475_data {void*** temp; } ;


 size_t HYSTERSIS ;
 int REG_REMOTE1_HYSTERSIS ;
 int REG_REMOTE2_HYSTERSIS ;
 scalar_t__ adt7475_read (int ) ;
 struct adt7475_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void adt7475_read_hystersis(struct i2c_client *client)
{
 struct adt7475_data *data = i2c_get_clientdata(client);

 data->temp[HYSTERSIS][0] = (u16) adt7475_read(REG_REMOTE1_HYSTERSIS);
 data->temp[HYSTERSIS][1] = data->temp[HYSTERSIS][0];
 data->temp[HYSTERSIS][2] = (u16) adt7475_read(REG_REMOTE2_HYSTERSIS);
}
