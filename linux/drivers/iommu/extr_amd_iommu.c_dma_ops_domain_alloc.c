
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* pt_root; int flags; int mode; } ;
struct dma_ops_domain {int iovad; TYPE_1__ domain; } ;


 int GFP_KERNEL ;
 int IOVA_START_PFN ;
 int PAGE_MODE_3_LEVEL ;
 int PAGE_SIZE ;
 int PD_DMA_OPS_MASK ;
 int copy_reserved_iova (int *,int *) ;
 int dma_ops_domain_free (struct dma_ops_domain*) ;
 scalar_t__ get_zeroed_page (int ) ;
 int init_iova_domain (int *,int ,int ) ;
 scalar_t__ init_iova_flush_queue (int *,int ,int *) ;
 int iova_domain_flush_tlb ;
 struct dma_ops_domain* kzalloc (int,int ) ;
 scalar_t__ protection_domain_init (TYPE_1__*) ;
 int reserved_iova_ranges ;

__attribute__((used)) static struct dma_ops_domain *dma_ops_domain_alloc(void)
{
 struct dma_ops_domain *dma_dom;

 dma_dom = kzalloc(sizeof(struct dma_ops_domain), GFP_KERNEL);
 if (!dma_dom)
  return ((void*)0);

 if (protection_domain_init(&dma_dom->domain))
  goto free_dma_dom;

 dma_dom->domain.mode = PAGE_MODE_3_LEVEL;
 dma_dom->domain.pt_root = (void *)get_zeroed_page(GFP_KERNEL);
 dma_dom->domain.flags = PD_DMA_OPS_MASK;
 if (!dma_dom->domain.pt_root)
  goto free_dma_dom;

 init_iova_domain(&dma_dom->iovad, PAGE_SIZE, IOVA_START_PFN);

 if (init_iova_flush_queue(&dma_dom->iovad, iova_domain_flush_tlb, ((void*)0)))
  goto free_dma_dom;


 copy_reserved_iova(&reserved_iova_ranges, &dma_dom->iovad);

 return dma_dom;

free_dma_dom:
 dma_ops_domain_free(dma_dom);

 return ((void*)0);
}
