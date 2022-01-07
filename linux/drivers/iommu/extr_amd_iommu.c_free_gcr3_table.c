
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protection_domain {int glx; scalar_t__ gcr3_tbl; } ;


 int BUG_ON (int) ;
 int free_gcr3_tbl_level1 (scalar_t__) ;
 int free_gcr3_tbl_level2 (scalar_t__) ;
 int free_page (unsigned long) ;

__attribute__((used)) static void free_gcr3_table(struct protection_domain *domain)
{
 if (domain->glx == 2)
  free_gcr3_tbl_level2(domain->gcr3_tbl);
 else if (domain->glx == 1)
  free_gcr3_tbl_level1(domain->gcr3_tbl);
 else
  BUG_ON(domain->glx != 0);

 free_page((unsigned long)domain->gcr3_tbl);
}
