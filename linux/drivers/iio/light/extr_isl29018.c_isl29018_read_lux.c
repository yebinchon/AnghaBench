
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scale; int uscale; } ;
struct isl29018_chip {unsigned int calibscale; unsigned int ucalibscale; TYPE_1__ scale; } ;


 int ISL29018_CMD1_OPMODE_ALS_ONCE ;
 int isl29018_read_sensor_input (struct isl29018_chip*,int ) ;

__attribute__((used)) static int isl29018_read_lux(struct isl29018_chip *chip, int *lux)
{
 int lux_data;
 unsigned int data_x_range;

 lux_data = isl29018_read_sensor_input(chip,
           ISL29018_CMD1_OPMODE_ALS_ONCE);
 if (lux_data < 0)
  return lux_data;

 data_x_range = lux_data * chip->scale.scale +
         lux_data * chip->scale.uscale / 1000000;
 *lux = data_x_range * chip->calibscale +
        data_x_range * chip->ucalibscale / 1000000;

 return 0;
}
