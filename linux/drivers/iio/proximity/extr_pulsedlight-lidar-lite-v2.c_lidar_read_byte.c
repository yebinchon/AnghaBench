
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lidar_data {int (* xfer ) (struct lidar_data*,int,int*,int) ;} ;


 int stub1 (struct lidar_data*,int,int*,int) ;

__attribute__((used)) static int lidar_read_byte(struct lidar_data *data, u8 reg)
{
 int ret;
 u8 val;

 ret = data->xfer(data, reg, &val, 1);
 if (ret < 0)
  return ret;

 return val;
}
