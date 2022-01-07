
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct device {int dummy; } ;
struct spi_device {int bits_per_word; int modalias; int mode; struct device dev; } ;
struct ads7871_data {struct spi_device* spi; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int OSC_BUFE_BM ;
 int OSC_OSCE_BM ;
 int OSC_OSCR_BM ;
 int OSC_REFE_BM ;
 int PTR_ERR_OR_ZERO (struct device*) ;
 int REG_AD_CONTROL ;
 int REG_OSC_CONTROL ;
 int REG_SER_CONTROL ;
 int SPI_MODE_0 ;
 int ads7871_groups ;
 int ads7871_read_reg8 (struct spi_device*,int ) ;
 int ads7871_write_reg8 (struct spi_device*,int ,int) ;
 int dev_dbg (struct device*,char*,int,int) ;
 struct device* devm_hwmon_device_register_with_groups (struct device*,int ,struct ads7871_data*,int ) ;
 struct ads7871_data* devm_kzalloc (struct device*,int,int ) ;
 int spi_setup (struct spi_device*) ;

__attribute__((used)) static int ads7871_probe(struct spi_device *spi)
{
 struct device *dev = &spi->dev;
 int ret;
 uint8_t val;
 struct ads7871_data *pdata;
 struct device *hwmon_dev;


 spi->mode = (SPI_MODE_0);
 spi->bits_per_word = 8;
 spi_setup(spi);

 ads7871_write_reg8(spi, REG_SER_CONTROL, 0);
 ads7871_write_reg8(spi, REG_AD_CONTROL, 0);

 val = (OSC_OSCR_BM | OSC_OSCE_BM | OSC_REFE_BM | OSC_BUFE_BM);
 ads7871_write_reg8(spi, REG_OSC_CONTROL, val);
 ret = ads7871_read_reg8(spi, REG_OSC_CONTROL);

 dev_dbg(dev, "REG_OSC_CONTROL write:%x, read:%x\n", val, ret);




 if (val != ret)
  return -ENODEV;

 pdata = devm_kzalloc(dev, sizeof(struct ads7871_data), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 pdata->spi = spi;

 hwmon_dev = devm_hwmon_device_register_with_groups(dev, spi->modalias,
          pdata,
          ads7871_groups);
 return PTR_ERR_OR_ZERO(hwmon_dev);
}
