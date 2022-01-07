
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int dummy; } ;
typedef enum allocation_event { ____Placeholder_allocation_event } allocation_event ;
typedef int dm_block_t ;


 int dec_ref_count ;
 int sm_ll_mutate (struct ll_disk*,int ,int ,int *,int*) ;

int sm_ll_dec(struct ll_disk *ll, dm_block_t b, enum allocation_event *ev)
{
 return sm_ll_mutate(ll, b, dec_ref_count, ((void*)0), ev);
}
