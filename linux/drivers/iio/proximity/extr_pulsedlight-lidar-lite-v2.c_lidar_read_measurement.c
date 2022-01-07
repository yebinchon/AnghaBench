
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct lidar_data {int (* xfer ) (struct lidar_data*,int,int *,int) ;scalar_t__ i2c_enabled; } ;


 int LIDAR_REG_DATA_HBYTE ;
 int LIDAR_REG_DATA_WORD_READ ;
 int be16_to_cpu (int ) ;
 int stub1 (struct lidar_data*,int,int *,int) ;

__attribute__((used)) static int lidar_read_measurement(struct lidar_data *data, u16 *reg)
{
 int ret = data->xfer(data, LIDAR_REG_DATA_HBYTE |
   (data->i2c_enabled ? LIDAR_REG_DATA_WORD_READ : 0),
   (u8 *) reg, 2);

 if (!ret)
  *reg = be16_to_cpu(*reg);

 return ret;
}
