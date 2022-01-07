
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apds9960_data {int gesture_mode_running; int lock; int buffer; int indio_dev; int regmap; } ;


 int APDS9960_REG_GFIFO_BASE ;
 scalar_t__ apds9660_fifo_is_empty (struct apds9960_data*) ;
 int iio_push_to_buffers (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_bulk_read (int ,int ,int *,int) ;

__attribute__((used)) static void apds9960_read_gesture_fifo(struct apds9960_data *data)
{
 int ret, cnt = 0;

 mutex_lock(&data->lock);
 data->gesture_mode_running = 1;

 while (cnt || (cnt = apds9660_fifo_is_empty(data) > 0)) {
  ret = regmap_bulk_read(data->regmap, APDS9960_REG_GFIFO_BASE,
          &data->buffer, 4);

  if (ret)
   goto err_read;

  iio_push_to_buffers(data->indio_dev, data->buffer);
  cnt--;
 }

err_read:
 data->gesture_mode_running = 0;
 mutex_unlock(&data->lock);
}
