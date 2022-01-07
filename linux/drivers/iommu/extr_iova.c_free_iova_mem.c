
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {scalar_t__ pfn_lo; } ;


 scalar_t__ IOVA_ANCHOR ;
 int iova_cache ;
 int kmem_cache_free (int ,struct iova*) ;

void free_iova_mem(struct iova *iova)
{
 if (iova->pfn_lo != IOVA_ANCHOR)
  kmem_cache_free(iova_cache, iova);
}
