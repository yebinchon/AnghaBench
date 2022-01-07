
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct psxpad {TYPE_1__* spi; } ;
struct input_polled_dev {struct psxpad* private; } ;
struct TYPE_2__ {int dev; } ;


 int pm_runtime_get_sync (int *) ;

__attribute__((used)) static void psxpad_spi_poll_open(struct input_polled_dev *pdev)
{
 struct psxpad *pad = pdev->private;

 pm_runtime_get_sync(&pad->spi->dev);
}
