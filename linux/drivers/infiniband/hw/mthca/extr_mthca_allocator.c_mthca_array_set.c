
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mthca_array {TYPE_1__* page_list; } ;
struct TYPE_2__ {void** page; int used; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int MTHCA_ARRAY_MASK ;
 int PAGE_SHIFT ;
 scalar_t__ get_zeroed_page (int ) ;

int mthca_array_set(struct mthca_array *array, int index, void *value)
{
 int p = (index * sizeof (void *)) >> PAGE_SHIFT;


 if (!array->page_list[p].page)
  array->page_list[p].page = (void **) get_zeroed_page(GFP_ATOMIC);

 if (!array->page_list[p].page)
  return -ENOMEM;

 array->page_list[p].page[index & MTHCA_ARRAY_MASK] = value;
 ++array->page_list[p].used;

 return 0;
}
