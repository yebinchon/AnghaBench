
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int bits_per_word; int dev; } ;
struct max7301 {int * dev; int write; int read; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int __max730x_probe (struct max7301*) ;
 struct max7301* devm_kzalloc (int *,int,int ) ;
 int max7301_spi_read ;
 int max7301_spi_write ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int max7301_probe(struct spi_device *spi)
{
 struct max7301 *ts;
 int ret;


 spi->bits_per_word = 16;
 ret = spi_setup(spi);
 if (ret < 0)
  return ret;

 ts = devm_kzalloc(&spi->dev, sizeof(struct max7301), GFP_KERNEL);
 if (!ts)
  return -ENOMEM;

 ts->read = max7301_spi_read;
 ts->write = max7301_spi_write;
 ts->dev = &spi->dev;

 ret = __max730x_probe(ts);
 return ret;
}
