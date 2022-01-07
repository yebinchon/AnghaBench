
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g762_data {int valid; int fan_cmd1; int client; } ;
struct device {int dummy; } ;


 int G762_REG_FAN_CMD1 ;
 int G762_REG_FAN_CMD1_DET_FAN_FAIL ;
 int G762_REG_FAN_CMD1_DET_FAN_OOC ;
 scalar_t__ IS_ERR (struct g762_data*) ;
 int PTR_ERR (struct g762_data*) ;
 struct g762_data* g762_update_client (struct device*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static inline int g762_fan_init(struct device *dev)
{
 struct g762_data *data = g762_update_client(dev);

 if (IS_ERR(data))
  return PTR_ERR(data);

 data->fan_cmd1 |= G762_REG_FAN_CMD1_DET_FAN_FAIL;
 data->fan_cmd1 |= G762_REG_FAN_CMD1_DET_FAN_OOC;
 data->valid = 0;

 return i2c_smbus_write_byte_data(data->client, G762_REG_FAN_CMD1,
      data->fan_cmd1);
}
