
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {size_t class; } ;
struct sensor_data {int scale; TYPE_1__ info; } ;


 int do_div (int ,int ) ;
 int * scpi_scale ;

__attribute__((used)) static void scpi_scale_reading(u64 *value, struct sensor_data *sensor)
{
 if (scpi_scale[sensor->info.class] != sensor->scale) {
  *value *= scpi_scale[sensor->info.class];
  do_div(*value, sensor->scale);
 }
}
