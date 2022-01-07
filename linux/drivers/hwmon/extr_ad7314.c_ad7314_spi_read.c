
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ad7314_data {int rx; TYPE_1__* spi_dev; } ;
struct TYPE_2__ {int dev; } ;


 int be16_to_cpu (int ) ;
 int dev_err (int *,char*) ;
 int spi_read (TYPE_1__*,int *,int) ;

__attribute__((used)) static int ad7314_spi_read(struct ad7314_data *chip)
{
 int ret;

 ret = spi_read(chip->spi_dev, (u8 *)&chip->rx, sizeof(chip->rx));
 if (ret < 0) {
  dev_err(&chip->spi_dev->dev, "SPI read error\n");
  return ret;
 }

 return be16_to_cpu(chip->rx);
}
