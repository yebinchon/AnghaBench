
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ id; } ;
struct dma_ops_domain {TYPE_1__ domain; int iovad; } ;


 int domain_id_free (scalar_t__) ;
 int free_pagetable (TYPE_1__*) ;
 int kfree (struct dma_ops_domain*) ;
 int put_iova_domain (int *) ;

__attribute__((used)) static void dma_ops_domain_free(struct dma_ops_domain *dom)
{
 if (!dom)
  return;

 put_iova_domain(&dom->iovad);

 free_pagetable(&dom->domain);

 if (dom->domain.id)
  domain_id_free(dom->domain.id);

 kfree(dom);
}
