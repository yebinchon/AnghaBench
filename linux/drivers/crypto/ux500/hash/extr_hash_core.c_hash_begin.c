
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hash_device_data {TYPE_1__* base; } ;
struct hash_ctx {int dummy; } ;
struct TYPE_2__ {int str; } ;


 int HASH_CLEAR_BITS (int *,int ) ;
 int HASH_INITIALIZE ;
 int HASH_STR_DCAL_MASK ;
 int HASH_STR_NBLW_MASK ;
 int cpu_relax () ;
 int readl (int *) ;

void hash_begin(struct hash_device_data *device_data, struct hash_ctx *ctx)
{



 while (readl(&device_data->base->str) & HASH_STR_DCAL_MASK)
  cpu_relax();






 HASH_INITIALIZE;




 HASH_CLEAR_BITS(&device_data->base->str, HASH_STR_NBLW_MASK);
}
