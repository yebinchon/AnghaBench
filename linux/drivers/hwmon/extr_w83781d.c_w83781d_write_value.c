
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct w83781d_data {int lock; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int w83781d_write_value_i2c (struct w83781d_data*,int ,int ) ;

__attribute__((used)) static int
w83781d_write_value(struct w83781d_data *data, u16 reg, u16 value)
{
 mutex_lock(&data->lock);
 w83781d_write_value_i2c(data, reg, value);
 mutex_unlock(&data->lock);

 return 0;
}
