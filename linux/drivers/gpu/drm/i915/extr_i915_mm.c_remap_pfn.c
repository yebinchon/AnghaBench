
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remap_pfn {int pfn; int prot; int mm; } ;
typedef int pte_t ;


 int pfn_pte (int ,int ) ;
 int pte_mkspecial (int ) ;
 int set_pte_at (int ,unsigned long,int *,int ) ;

__attribute__((used)) static int remap_pfn(pte_t *pte, unsigned long addr, void *data)
{
 struct remap_pfn *r = data;


 set_pte_at(r->mm, addr, pte, pte_mkspecial(pfn_pte(r->pfn, r->prot)));
 r->pfn++;

 return 0;
}
