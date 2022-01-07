
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct spi_device {int dummy; } ;
struct mipi_dbi {int dc; int swap_bytes; struct spi_device* spi; } ;


 scalar_t__ ILI9225_WRITE_DATA_TO_GRAM ;
 int gpiod_set_value_cansleep (int ,int) ;
 int mipi_dbi_spi_cmd_max_speed (struct spi_device*,size_t) ;
 int mipi_dbi_spi_transfer (struct spi_device*,int ,unsigned int,scalar_t__*,size_t) ;

__attribute__((used)) static int ili9225_dbi_command(struct mipi_dbi *dbi, u8 *cmd, u8 *par,
          size_t num)
{
 struct spi_device *spi = dbi->spi;
 unsigned int bpw = 8;
 u32 speed_hz;
 int ret;

 gpiod_set_value_cansleep(dbi->dc, 0);
 speed_hz = mipi_dbi_spi_cmd_max_speed(spi, 1);
 ret = mipi_dbi_spi_transfer(spi, speed_hz, 8, cmd, 1);
 if (ret || !num)
  return ret;

 if (*cmd == ILI9225_WRITE_DATA_TO_GRAM && !dbi->swap_bytes)
  bpw = 16;

 gpiod_set_value_cansleep(dbi->dc, 1);
 speed_hz = mipi_dbi_spi_cmd_max_speed(spi, num);

 return mipi_dbi_spi_transfer(spi, speed_hz, bpw, par, num);
}
