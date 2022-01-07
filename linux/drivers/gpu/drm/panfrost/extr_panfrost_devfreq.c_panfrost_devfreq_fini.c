
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct panfrost_device {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_pm_opp_of_remove_table (int *) ;

void panfrost_devfreq_fini(struct panfrost_device *pfdev)
{
 dev_pm_opp_of_remove_table(&pfdev->pdev->dev);
}
