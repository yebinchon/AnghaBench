
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct mpl115_spi_buf {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mpl115_spi_buf* devm_kzalloc (struct device*,int,int ) ;
 int spi_set_drvdata (struct spi_device*,struct mpl115_spi_buf*) ;
 struct spi_device* to_spi_device (struct device*) ;

__attribute__((used)) static int mpl115_spi_init(struct device *dev)
{
 struct spi_device *spi = to_spi_device(dev);
 struct mpl115_spi_buf *buf;

 buf = devm_kzalloc(dev, sizeof(*buf), GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 spi_set_drvdata(spi, buf);

 return 0;
}
