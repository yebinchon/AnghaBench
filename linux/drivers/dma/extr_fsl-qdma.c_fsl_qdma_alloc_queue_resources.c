
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_qdma_queue {unsigned int n_cq; int id; int queue_lock; int comp_used; scalar_t__ cq; scalar_t__ virt_tail; scalar_t__ virt_head; scalar_t__ block_base; int bus_addr; } ;
struct fsl_qdma_format {int dummy; } ;
struct fsl_qdma_engine {int n_queues; int block_number; scalar_t__ block_base; } ;


 scalar_t__ FSL_QDMA_BLOCK_BASE_OFFSET (struct fsl_qdma_engine*,int) ;
 unsigned int FSL_QDMA_CIRCULAR_DESC_SIZE_MAX ;
 unsigned int FSL_QDMA_CIRCULAR_DESC_SIZE_MIN ;
 int FSL_QDMA_QUEUE_MAX ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int dev_err (int *,char*) ;
 int device_property_read_u32_array (int *,char*,unsigned int*,int) ;
 struct fsl_qdma_queue* devm_kzalloc (int *,int,int ) ;
 scalar_t__ dma_alloc_coherent (int *,int,int *,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct fsl_qdma_queue
*fsl_qdma_alloc_queue_resources(struct platform_device *pdev,
    struct fsl_qdma_engine *fsl_qdma)
{
 int ret, len, i, j;
 int queue_num, block_number;
 unsigned int queue_size[FSL_QDMA_QUEUE_MAX];
 struct fsl_qdma_queue *queue_head, *queue_temp;

 queue_num = fsl_qdma->n_queues;
 block_number = fsl_qdma->block_number;

 if (queue_num > FSL_QDMA_QUEUE_MAX)
  queue_num = FSL_QDMA_QUEUE_MAX;
 len = sizeof(*queue_head) * queue_num * block_number;
 queue_head = devm_kzalloc(&pdev->dev, len, GFP_KERNEL);
 if (!queue_head)
  return ((void*)0);

 ret = device_property_read_u32_array(&pdev->dev, "queue-sizes",
          queue_size, queue_num);
 if (ret) {
  dev_err(&pdev->dev, "Can't get queue-sizes.\n");
  return ((void*)0);
 }
 for (j = 0; j < block_number; j++) {
  for (i = 0; i < queue_num; i++) {
   if (queue_size[i] > FSL_QDMA_CIRCULAR_DESC_SIZE_MAX ||
       queue_size[i] < FSL_QDMA_CIRCULAR_DESC_SIZE_MIN) {
    dev_err(&pdev->dev,
     "Get wrong queue-sizes.\n");
    return ((void*)0);
   }
   queue_temp = queue_head + i + (j * queue_num);

   queue_temp->cq =
   dma_alloc_coherent(&pdev->dev,
        sizeof(struct fsl_qdma_format) *
        queue_size[i],
        &queue_temp->bus_addr,
        GFP_KERNEL);
   if (!queue_temp->cq)
    return ((void*)0);
   queue_temp->block_base = fsl_qdma->block_base +
    FSL_QDMA_BLOCK_BASE_OFFSET(fsl_qdma, j);
   queue_temp->n_cq = queue_size[i];
   queue_temp->id = i;
   queue_temp->virt_head = queue_temp->cq;
   queue_temp->virt_tail = queue_temp->cq;



   INIT_LIST_HEAD(&queue_temp->comp_used);
   spin_lock_init(&queue_temp->queue_lock);
  }
 }
 return queue_head;
}
