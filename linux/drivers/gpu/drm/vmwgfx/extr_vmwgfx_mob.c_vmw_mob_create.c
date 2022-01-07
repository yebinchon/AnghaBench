
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmw_mob {int num_pages; } ;


 int GFP_KERNEL ;
 struct vmw_mob* kzalloc (int,int ) ;
 scalar_t__ unlikely (int) ;
 int vmw_mob_calculate_pt_pages (unsigned long) ;

struct vmw_mob *vmw_mob_create(unsigned long data_pages)
{
 struct vmw_mob *mob = kzalloc(sizeof(*mob), GFP_KERNEL);

 if (unlikely(!mob))
  return ((void*)0);

 mob->num_pages = vmw_mob_calculate_pt_pages(data_pages);

 return mob;
}
