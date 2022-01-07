
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int dummy; } ;
struct bmc150_accel_data {TYPE_1__* interrupts; } ;
struct TYPE_2__ {int * info; } ;


 int BMC150_ACCEL_INTERRUPTS ;
 int * bmc150_accel_interrupts ;

__attribute__((used)) static void bmc150_accel_interrupts_setup(struct iio_dev *indio_dev,
       struct bmc150_accel_data *data)
{
 int i;

 for (i = 0; i < BMC150_ACCEL_INTERRUPTS; i++)
  data->interrupts[i].info = &bmc150_accel_interrupts[i];
}
