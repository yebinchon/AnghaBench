
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbridge_dev {struct sbridge_dev* pdev; int list; } ;


 int kfree (struct sbridge_dev*) ;
 int list_del (int *) ;

__attribute__((used)) static void free_sbridge_dev(struct sbridge_dev *sbridge_dev)
{
 list_del(&sbridge_dev->list);
 kfree(sbridge_dev->pdev);
 kfree(sbridge_dev);
}
