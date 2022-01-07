
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx90632_data {int lock; int regmap; } ;
typedef scalar_t__ s32 ;
typedef int s16 ;


 scalar_t__ mlx90632_perform_measurement (struct mlx90632_data*) ;
 scalar_t__ mlx90632_read_ambient_raw (int ,int *,int *) ;
 scalar_t__ mlx90632_read_object_raw (int ,scalar_t__,int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int mlx90632_read_all_channel(struct mlx90632_data *data,
         s16 *ambient_new_raw, s16 *ambient_old_raw,
         s16 *object_new_raw, s16 *object_old_raw)
{
 s32 ret, measurement;

 mutex_lock(&data->lock);
 measurement = mlx90632_perform_measurement(data);
 if (measurement < 0) {
  ret = measurement;
  goto read_unlock;
 }
 ret = mlx90632_read_ambient_raw(data->regmap, ambient_new_raw,
     ambient_old_raw);
 if (ret < 0)
  goto read_unlock;

 ret = mlx90632_read_object_raw(data->regmap, measurement,
           object_new_raw, object_old_raw);
read_unlock:
 mutex_unlock(&data->lock);
 return ret;
}
