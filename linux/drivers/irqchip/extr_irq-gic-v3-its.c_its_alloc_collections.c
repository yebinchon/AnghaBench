
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct its_node {TYPE_1__* collections; } ;
struct TYPE_2__ {unsigned long long target_address; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 TYPE_1__* kcalloc (int,int,int ) ;
 int nr_cpu_ids ;

__attribute__((used)) static int its_alloc_collections(struct its_node *its)
{
 int i;

 its->collections = kcalloc(nr_cpu_ids, sizeof(*its->collections),
       GFP_KERNEL);
 if (!its->collections)
  return -ENOMEM;

 for (i = 0; i < nr_cpu_ids; i++)
  its->collections[i].target_address = ~0ULL;

 return 0;
}
