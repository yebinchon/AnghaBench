
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int ms5611_remove (int ) ;
 int spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int ms5611_spi_remove(struct spi_device *spi)
{
 return ms5611_remove(spi_get_drvdata(spi));
}
