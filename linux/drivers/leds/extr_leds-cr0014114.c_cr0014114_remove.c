
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct cr0014114 {int lock; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 int mutex_destroy (int *) ;
 struct cr0014114* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int cr0014114_remove(struct spi_device *spi)
{
 struct cr0014114 *priv = spi_get_drvdata(spi);

 cancel_delayed_work_sync(&priv->work);
 mutex_destroy(&priv->lock);

 return 0;
}
