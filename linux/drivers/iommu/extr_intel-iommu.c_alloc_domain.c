
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_domain {int flags; int has_iotlb_device; int devices; int nid; } ;


 int INIT_LIST_HEAD (int *) ;
 int NUMA_NO_NODE ;
 struct dmar_domain* alloc_domain_mem () ;
 int memset (struct dmar_domain*,int ,int) ;

__attribute__((used)) static struct dmar_domain *alloc_domain(int flags)
{
 struct dmar_domain *domain;

 domain = alloc_domain_mem();
 if (!domain)
  return ((void*)0);

 memset(domain, 0, sizeof(*domain));
 domain->nid = NUMA_NO_NODE;
 domain->flags = flags;
 domain->has_iotlb_device = 0;
 INIT_LIST_HEAD(&domain->devices);

 return domain;
}
