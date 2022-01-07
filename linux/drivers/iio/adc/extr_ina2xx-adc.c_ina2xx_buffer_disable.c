
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ina2xx_chip_info {int * task; } ;
struct iio_dev {int dummy; } ;


 struct ina2xx_chip_info* iio_priv (struct iio_dev*) ;
 int kthread_stop (int *) ;
 int put_task_struct (int *) ;

__attribute__((used)) static int ina2xx_buffer_disable(struct iio_dev *indio_dev)
{
 struct ina2xx_chip_info *chip = iio_priv(indio_dev);

 if (chip->task) {
  kthread_stop(chip->task);
  put_task_struct(chip->task);
  chip->task = ((void*)0);
 }

 return 0;
}
