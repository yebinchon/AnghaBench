
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;


 int spi_get_drvdata (struct spi_device*) ;
 int st_accel_common_remove (int ) ;

__attribute__((used)) static int st_accel_spi_remove(struct spi_device *spi)
{
 st_accel_common_remove(spi_get_drvdata(spi));

 return 0;
}
