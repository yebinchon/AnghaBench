
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct hidma_dev {int lldev; TYPE_1__ ddev; } ;


 int hidma_ll_start (int ) ;
 int pm_runtime_get_sync (int ) ;

__attribute__((used)) static void hidma_issue_task(unsigned long arg)
{
 struct hidma_dev *dmadev = (struct hidma_dev *)arg;

 pm_runtime_get_sync(dmadev->ddev.dev);
 hidma_ll_start(dmadev->lldev);
}
