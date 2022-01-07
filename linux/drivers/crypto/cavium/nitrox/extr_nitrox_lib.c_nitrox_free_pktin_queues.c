
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nitrox_device {int nr_queues; struct nitrox_cmdq* pkt_inq; } ;
struct nitrox_cmdq {int dummy; } ;


 int kfree (struct nitrox_cmdq*) ;
 int nitrox_cmdq_cleanup (struct nitrox_cmdq*) ;

__attribute__((used)) static void nitrox_free_pktin_queues(struct nitrox_device *ndev)
{
 int i;

 for (i = 0; i < ndev->nr_queues; i++) {
  struct nitrox_cmdq *cmdq = &ndev->pkt_inq[i];

  nitrox_cmdq_cleanup(cmdq);
 }
 kfree(ndev->pkt_inq);
 ndev->pkt_inq = ((void*)0);
}
