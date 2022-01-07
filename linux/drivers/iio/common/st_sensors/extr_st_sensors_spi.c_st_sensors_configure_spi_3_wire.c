
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ value; scalar_t__ addr; } ;
struct st_sensor_settings {TYPE_1__ sim; } ;
struct spi_device {int dummy; } ;


 int spi_write (struct spi_device*,scalar_t__*,int) ;

__attribute__((used)) static int st_sensors_configure_spi_3_wire(struct spi_device *spi,
        struct st_sensor_settings *settings)
{
 if (settings->sim.addr) {
  u8 buffer[] = {
   settings->sim.addr,
   settings->sim.value
  };

  return spi_write(spi, buffer, 2);
 }

 return 0;
}
