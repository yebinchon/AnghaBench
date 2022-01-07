
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iio_dev {int num_channels; TYPE_1__* channels; } ;
struct TYPE_2__ {scalar_t__ num_event_specs; } ;



__attribute__((used)) static bool iio_check_for_dynamic_events(struct iio_dev *indio_dev)
{
 int j;

 for (j = 0; j < indio_dev->num_channels; j++) {
  if (indio_dev->channels[j].num_event_specs != 0)
   return 1;
 }
 return 0;
}
