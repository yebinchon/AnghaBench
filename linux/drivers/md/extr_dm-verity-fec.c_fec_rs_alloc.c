
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dm_verity {TYPE_1__* fec; } ;
typedef int gfp_t ;
struct TYPE_2__ {int roots; } ;


 void* init_rs_gfp (int,int,int ,int,int ,int ) ;

__attribute__((used)) static void *fec_rs_alloc(gfp_t gfp_mask, void *pool_data)
{
 struct dm_verity *v = (struct dm_verity *)pool_data;

 return init_rs_gfp(8, 0x11d, 0, 1, v->fec->roots, gfp_mask);
}
