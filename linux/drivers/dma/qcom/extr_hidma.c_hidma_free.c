
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int channels; } ;
struct hidma_dev {TYPE_1__ ddev; } ;


 int INIT_LIST_HEAD (int *) ;

__attribute__((used)) static void hidma_free(struct hidma_dev *dmadev)
{
 INIT_LIST_HEAD(&dmadev->ddev.channels);
}
