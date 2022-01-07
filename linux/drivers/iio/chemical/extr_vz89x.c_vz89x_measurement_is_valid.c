
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vz89x_data {scalar_t__* buffer; TYPE_1__* chip; } ;
struct TYPE_2__ {int read_size; } ;


 size_t VZ89X_VOC_SHORT_IDX ;

__attribute__((used)) static bool vz89x_measurement_is_valid(struct vz89x_data *data)
{
 if (data->buffer[VZ89X_VOC_SHORT_IDX] == 0)
  return 1;

 return !!(data->buffer[data->chip->read_size - 1] > 0);
}
