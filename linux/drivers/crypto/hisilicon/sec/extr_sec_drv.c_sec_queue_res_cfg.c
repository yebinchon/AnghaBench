
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_queue_ring_db {int paddr; void* vaddr; } ;
struct sec_queue_ring_cq {int paddr; void* vaddr; } ;
struct sec_queue_ring_cmd {int paddr; void* vaddr; int callback; int lock; int used; } ;
struct sec_queue {int queue_id; struct sec_queue_ring_cmd ring_cmd; struct sec_queue_ring_cq ring_cq; struct sec_queue_ring_db ring_db; int task_irq; TYPE_1__* dev_info; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device* dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SEC_Q_CMD_SIZE ;
 int SEC_Q_CQ_SIZE ;
 int SEC_Q_DB_SIZE ;
 int atomic_set (int *,int ) ;
 void* dma_alloc_coherent (struct device*,int ,int *,int ) ;
 int dma_free_coherent (struct device*,int ,void*,int ) ;
 int mutex_init (int *) ;
 int platform_get_irq (int ,int) ;
 int sec_alg_callback ;
 int to_platform_device (struct device*) ;

__attribute__((used)) static int sec_queue_res_cfg(struct sec_queue *queue)
{
 struct device *dev = queue->dev_info->dev;
 struct sec_queue_ring_cmd *ring_cmd = &queue->ring_cmd;
 struct sec_queue_ring_cq *ring_cq = &queue->ring_cq;
 struct sec_queue_ring_db *ring_db = &queue->ring_db;
 int ret;

 ring_cmd->vaddr = dma_alloc_coherent(dev, SEC_Q_CMD_SIZE,
          &ring_cmd->paddr, GFP_KERNEL);
 if (!ring_cmd->vaddr)
  return -ENOMEM;

 atomic_set(&ring_cmd->used, 0);
 mutex_init(&ring_cmd->lock);
 ring_cmd->callback = sec_alg_callback;

 ring_cq->vaddr = dma_alloc_coherent(dev, SEC_Q_CQ_SIZE,
         &ring_cq->paddr, GFP_KERNEL);
 if (!ring_cq->vaddr) {
  ret = -ENOMEM;
  goto err_free_ring_cmd;
 }

 ring_db->vaddr = dma_alloc_coherent(dev, SEC_Q_DB_SIZE,
         &ring_db->paddr, GFP_KERNEL);
 if (!ring_db->vaddr) {
  ret = -ENOMEM;
  goto err_free_ring_cq;
 }
 queue->task_irq = platform_get_irq(to_platform_device(dev),
        queue->queue_id * 2 + 1);
 if (queue->task_irq <= 0) {
  ret = -EINVAL;
  goto err_free_ring_db;
 }

 return 0;

err_free_ring_db:
 dma_free_coherent(dev, SEC_Q_DB_SIZE, queue->ring_db.vaddr,
     queue->ring_db.paddr);
err_free_ring_cq:
 dma_free_coherent(dev, SEC_Q_CQ_SIZE, queue->ring_cq.vaddr,
     queue->ring_cq.paddr);
err_free_ring_cmd:
 dma_free_coherent(dev, SEC_Q_CMD_SIZE, queue->ring_cmd.vaddr,
     queue->ring_cmd.paddr);

 return ret;
}
