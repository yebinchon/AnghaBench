
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct fsl_qdma_engine {scalar_t__ error_irq; int block_number; scalar_t__* queue_irq; } ;


 int dev_err (int *,char*,...) ;
 int devm_request_irq (int *,int,int ,int ,char*,struct fsl_qdma_engine*) ;
 int fsl_qdma_error_handler ;
 int fsl_qdma_queue_handler ;
 int get_cpu_mask (int) ;
 int irq_set_affinity_hint (int,int ) ;
 int num_online_cpus () ;
 void* platform_get_irq_byname (struct platform_device*,char*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int
fsl_qdma_irq_init(struct platform_device *pdev,
    struct fsl_qdma_engine *fsl_qdma)
{
 int i;
 int cpu;
 int ret;
 char irq_name[20];

 fsl_qdma->error_irq =
  platform_get_irq_byname(pdev, "qdma-error");
 if (fsl_qdma->error_irq < 0)
  return fsl_qdma->error_irq;

 ret = devm_request_irq(&pdev->dev, fsl_qdma->error_irq,
          fsl_qdma_error_handler, 0,
          "qDMA error", fsl_qdma);
 if (ret) {
  dev_err(&pdev->dev, "Can't register qDMA controller IRQ.\n");
  return ret;
 }

 for (i = 0; i < fsl_qdma->block_number; i++) {
  sprintf(irq_name, "qdma-queue%d", i);
  fsl_qdma->queue_irq[i] =
    platform_get_irq_byname(pdev, irq_name);

  if (fsl_qdma->queue_irq[i] < 0)
   return fsl_qdma->queue_irq[i];

  ret = devm_request_irq(&pdev->dev,
           fsl_qdma->queue_irq[i],
           fsl_qdma_queue_handler,
           0,
           "qDMA queue",
           fsl_qdma);
  if (ret) {
   dev_err(&pdev->dev,
    "Can't register qDMA queue IRQ.\n");
   return ret;
  }

  cpu = i % num_online_cpus();
  ret = irq_set_affinity_hint(fsl_qdma->queue_irq[i],
         get_cpu_mask(cpu));
  if (ret) {
   dev_err(&pdev->dev,
    "Can't set cpu %d affinity to IRQ %d.\n",
    cpu,
    fsl_qdma->queue_irq[i]);
   return ret;
  }
 }

 return 0;
}
