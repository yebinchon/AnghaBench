
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct host1x_job_unpin_data {int bo; int sgt; scalar_t__ size; } ;
struct host1x_job {unsigned int num_unpins; int gather_copy; int gather_copy_mapped; scalar_t__ gather_copy_size; TYPE_1__* channel; int * addr_phys; struct host1x_job_unpin_data* unpins; } ;
struct host1x {int iova; scalar_t__ domain; } ;
struct TYPE_4__ {int parent; } ;
struct TYPE_3__ {TYPE_2__* dev; } ;


 int CONFIG_TEGRA_HOST1X_FIREWALL ;
 int IS_ENABLED (int ) ;
 struct host1x* dev_get_drvdata (int ) ;
 int dma_free_wc (TYPE_2__*,scalar_t__,int ,int ) ;
 int free_iova (int *,int ) ;
 int host1x_bo_put (int ) ;
 int host1x_bo_unpin (int ,int ) ;
 int iommu_unmap (scalar_t__,int ,scalar_t__) ;
 int iova_pfn (int *,int ) ;

void host1x_job_unpin(struct host1x_job *job)
{
 struct host1x *host = dev_get_drvdata(job->channel->dev->parent);
 unsigned int i;

 for (i = 0; i < job->num_unpins; i++) {
  struct host1x_job_unpin_data *unpin = &job->unpins[i];

  if (!IS_ENABLED(CONFIG_TEGRA_HOST1X_FIREWALL) &&
      unpin->size && host->domain) {
   iommu_unmap(host->domain, job->addr_phys[i],
        unpin->size);
   free_iova(&host->iova,
    iova_pfn(&host->iova, job->addr_phys[i]));
  }

  host1x_bo_unpin(unpin->bo, unpin->sgt);
  host1x_bo_put(unpin->bo);
 }

 job->num_unpins = 0;

 if (job->gather_copy_size)
  dma_free_wc(job->channel->dev, job->gather_copy_size,
       job->gather_copy_mapped, job->gather_copy);
}
