
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct silead_ts_data {int fw_name; } ;
struct i2c_device_id {char* name; } ;


 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static int silead_ts_set_default_fw_name(struct silead_ts_data *data,
      const struct i2c_device_id *id)
{
 snprintf(data->fw_name, sizeof(data->fw_name),
   "silead/%s.fw", id->name);
 return 0;
}
