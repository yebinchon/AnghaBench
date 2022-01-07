
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shdma_dev {int schan; } ;


 int kfree (int ) ;

void shdma_cleanup(struct shdma_dev *sdev)
{
 kfree(sdev->schan);
}
