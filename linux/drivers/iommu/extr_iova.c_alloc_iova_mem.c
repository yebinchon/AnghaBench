
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iova {int dummy; } ;


 int GFP_ATOMIC ;
 int iova_cache ;
 struct iova* kmem_cache_alloc (int ,int ) ;

struct iova *alloc_iova_mem(void)
{
 return kmem_cache_alloc(iova_cache, GFP_ATOMIC);
}
