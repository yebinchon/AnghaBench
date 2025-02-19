
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct fsl_qdma_queue {unsigned int n_cq; int * comp_pool; scalar_t__ cq; scalar_t__ virt_tail; scalar_t__ virt_head; int bus_addr; } ;
struct fsl_qdma_format {int dummy; } ;
struct device_node {int dummy; } ;


 unsigned int FSL_QDMA_CIRCULAR_DESC_SIZE_MAX ;
 unsigned int FSL_QDMA_CIRCULAR_DESC_SIZE_MIN ;
 int GFP_KERNEL ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_kfree (TYPE_1__*,struct fsl_qdma_queue*) ;
 struct fsl_qdma_queue* devm_kzalloc (TYPE_1__*,int,int ) ;
 scalar_t__ dma_alloc_coherent (TYPE_1__*,int,int *,int ) ;
 int of_property_read_u32 (struct device_node*,char*,unsigned int*) ;

__attribute__((used)) static struct fsl_qdma_queue
*fsl_qdma_prep_status_queue(struct platform_device *pdev)
{
 int ret;
 unsigned int status_size;
 struct fsl_qdma_queue *status_head;
 struct device_node *np = pdev->dev.of_node;

 ret = of_property_read_u32(np, "status-sizes", &status_size);
 if (ret) {
  dev_err(&pdev->dev, "Can't get status-sizes.\n");
  return ((void*)0);
 }
 if (status_size > FSL_QDMA_CIRCULAR_DESC_SIZE_MAX ||
     status_size < FSL_QDMA_CIRCULAR_DESC_SIZE_MIN) {
  dev_err(&pdev->dev, "Get wrong status_size.\n");
  return ((void*)0);
 }
 status_head = devm_kzalloc(&pdev->dev,
       sizeof(*status_head), GFP_KERNEL);
 if (!status_head)
  return ((void*)0);




 status_head->cq = dma_alloc_coherent(&pdev->dev,
          sizeof(struct fsl_qdma_format) *
          status_size,
          &status_head->bus_addr,
          GFP_KERNEL);
 if (!status_head->cq) {
  devm_kfree(&pdev->dev, status_head);
  return ((void*)0);
 }
 status_head->n_cq = status_size;
 status_head->virt_head = status_head->cq;
 status_head->virt_tail = status_head->cq;
 status_head->comp_pool = ((void*)0);

 return status_head;
}
