
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int length; } ;
struct iser_page_vec {int npages; int * pages; TYPE_1__ fake_mr; } ;


 int iser_err (char*,int,int ) ;

__attribute__((used)) static void iser_dump_page_vec(struct iser_page_vec *page_vec)
{
 int i;

 iser_err("page vec npages %d data length %lld\n",
   page_vec->npages, page_vec->fake_mr.length);
 for (i = 0; i < page_vec->npages; i++)
  iser_err("vec[%d]: %llx\n", i, page_vec->pages[i]);
}
