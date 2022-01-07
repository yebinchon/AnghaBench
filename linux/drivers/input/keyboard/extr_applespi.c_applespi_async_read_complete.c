
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ status; } ;
struct applespi_data {int gpe; TYPE_2__ rd_m; TYPE_1__* spi; } ;
struct TYPE_3__ {int dev; } ;


 int acpi_finish_gpe (int *,int ) ;
 int applespi_got_data (struct applespi_data*) ;
 int applespi_msg_complete (struct applespi_data*,int,int) ;
 int dev_warn (int *,char*,scalar_t__) ;

__attribute__((used)) static void applespi_async_read_complete(void *context)
{
 struct applespi_data *applespi = context;

 if (applespi->rd_m.status < 0) {
  dev_warn(&applespi->spi->dev, "Error reading from device: %d\n",
    applespi->rd_m.status);





  applespi_msg_complete(applespi, 1, 1);
 } else {
  applespi_got_data(applespi);
 }

 acpi_finish_gpe(((void*)0), applespi->gpe);
}
