
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;
typedef int __le16 ;


 int ETP_I2C_MAX_BASELINE_CMD ;
 int ETP_I2C_MIN_BASELINE_CMD ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,int *) ;
 int le16_to_cpup (int *) ;

__attribute__((used)) static int elan_i2c_get_baseline_data(struct i2c_client *client,
          bool max_baseline, u8 *value)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client,
      max_baseline ? ETP_I2C_MAX_BASELINE_CMD :
       ETP_I2C_MIN_BASELINE_CMD,
      val);
 if (error)
  return error;

 *value = le16_to_cpup((__le16 *)val);

 return 0;
}
