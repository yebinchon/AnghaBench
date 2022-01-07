
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dev; } ;
struct applespi_data {int debugfs_root; int gpe; } ;


 int acpi_disable_gpe (int *,int ) ;
 int acpi_remove_gpe_handler (int *,int ,int ) ;
 int applespi_drain_reads (struct applespi_data*) ;
 int applespi_drain_writes (struct applespi_data*) ;
 int applespi_notify ;
 int debugfs_remove_recursive (int ) ;
 int device_wakeup_disable (int *) ;
 struct applespi_data* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int applespi_remove(struct spi_device *spi)
{
 struct applespi_data *applespi = spi_get_drvdata(spi);

 applespi_drain_writes(applespi);

 acpi_disable_gpe(((void*)0), applespi->gpe);
 acpi_remove_gpe_handler(((void*)0), applespi->gpe, applespi_notify);
 device_wakeup_disable(&spi->dev);

 applespi_drain_reads(applespi);

 debugfs_remove_recursive(applespi->debugfs_root);

 return 0;
}
