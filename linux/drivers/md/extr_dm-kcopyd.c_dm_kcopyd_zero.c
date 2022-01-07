
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_kcopyd_client {int dummy; } ;
struct dm_io_region {int dummy; } ;
typedef int dm_kcopyd_notify_fn ;


 int dm_kcopyd_copy (struct dm_kcopyd_client*,int *,unsigned int,struct dm_io_region*,unsigned int,int ,void*) ;

void dm_kcopyd_zero(struct dm_kcopyd_client *kc,
      unsigned num_dests, struct dm_io_region *dests,
      unsigned flags, dm_kcopyd_notify_fn fn, void *context)
{
 dm_kcopyd_copy(kc, ((void*)0), num_dests, dests, flags, fn, context);
}
