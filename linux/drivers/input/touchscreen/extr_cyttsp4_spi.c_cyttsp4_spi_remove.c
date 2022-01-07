
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct cyttsp4 {int dummy; } ;


 int cyttsp4_remove (struct cyttsp4*) ;
 struct cyttsp4* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int cyttsp4_spi_remove(struct spi_device *spi)
{
 struct cyttsp4 *ts = spi_get_drvdata(spi);
 cyttsp4_remove(ts);

 return 0;
}
