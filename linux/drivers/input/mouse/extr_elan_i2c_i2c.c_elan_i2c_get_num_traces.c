
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct i2c_client {int dev; } ;


 int ETP_I2C_XY_TRACENUM_CMD ;
 int dev_err (int *,char*,int) ;
 int elan_i2c_read_cmd (struct i2c_client*,int ,unsigned int*) ;

__attribute__((used)) static int elan_i2c_get_num_traces(struct i2c_client *client,
       unsigned int *x_traces,
       unsigned int *y_traces)
{
 int error;
 u8 val[3];

 error = elan_i2c_read_cmd(client, ETP_I2C_XY_TRACENUM_CMD, val);
 if (error) {
  dev_err(&client->dev, "failed to get trace info: %d\n", error);
  return error;
 }

 *x_traces = val[0];
 *y_traces = val[1];

 return 0;
}
