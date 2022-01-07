
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lidar_data {int client; } ;


 int LIDAR_REG_PWR_CONTROL ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static inline int lidar_write_power(struct lidar_data *data, int val)
{
 return i2c_smbus_write_byte_data(data->client,
      LIDAR_REG_PWR_CONTROL, val);
}
