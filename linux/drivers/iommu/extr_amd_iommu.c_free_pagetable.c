
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int mode; scalar_t__ pt_root; } ;
struct page {int dummy; } ;


 int BUG_ON (int) ;
 int PAGE_MODE_6_LEVEL ;
 int PAGE_MODE_NONE ;
 int free_page_list (struct page*) ;
 struct page* free_sub_pt (unsigned long,int ,struct page*) ;

__attribute__((used)) static void free_pagetable(struct protection_domain *domain)
{
 unsigned long root = (unsigned long)domain->pt_root;
 struct page *freelist = ((void*)0);

 BUG_ON(domain->mode < PAGE_MODE_NONE ||
        domain->mode > PAGE_MODE_6_LEVEL);

 freelist = free_sub_pt(root, domain->mode, freelist);

 free_page_list(freelist);
}
