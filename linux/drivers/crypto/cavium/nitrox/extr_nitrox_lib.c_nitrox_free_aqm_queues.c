
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int nr_queues; int ** aqmq; } ;


 int kzfree (int *) ;
 int nitrox_cmdq_cleanup (int *) ;

__attribute__((used)) static void nitrox_free_aqm_queues(struct nitrox_device *ndev)
{
 int i;

 for (i = 0; i < ndev->nr_queues; i++) {
  nitrox_cmdq_cleanup(ndev->aqmq[i]);
  kzfree(ndev->aqmq[i]);
  ndev->aqmq[i] = ((void*)0);
 }
}
