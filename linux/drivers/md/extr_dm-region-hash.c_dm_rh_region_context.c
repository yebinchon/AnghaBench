
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_region {TYPE_1__* rh; } ;
struct TYPE_2__ {void* context; } ;



void *dm_rh_region_context(struct dm_region *reg)
{
 return reg->rh->context;
}
