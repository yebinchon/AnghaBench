
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int paddr; int vaddr; } ;
struct TYPE_8__ {int paddr; int vaddr; } ;
struct TYPE_7__ {int paddr; int vaddr; } ;
struct sec_queue {TYPE_1__ ring_cmd; TYPE_4__ ring_cq; TYPE_3__ ring_db; TYPE_2__* dev_info; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct device* dev; } ;


 int SEC_Q_CMD_SIZE ;
 int SEC_Q_CQ_SIZE ;
 int SEC_Q_DB_SIZE ;
 int dma_free_coherent (struct device*,int ,int ,int ) ;

__attribute__((used)) static void sec_queue_free_ring_pages(struct sec_queue *queue)
{
 struct device *dev = queue->dev_info->dev;

 dma_free_coherent(dev, SEC_Q_DB_SIZE, queue->ring_db.vaddr,
     queue->ring_db.paddr);
 dma_free_coherent(dev, SEC_Q_CQ_SIZE, queue->ring_cq.vaddr,
     queue->ring_cq.paddr);
 dma_free_coherent(dev, SEC_Q_CMD_SIZE, queue->ring_cmd.vaddr,
     queue->ring_cmd.paddr);
}
