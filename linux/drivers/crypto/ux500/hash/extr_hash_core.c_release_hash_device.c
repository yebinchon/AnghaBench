
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hash_device_data {int ctx_lock; TYPE_1__* current_ctx; } ;
struct TYPE_4__ {int device_allocation; } ;
struct TYPE_3__ {int * device; } ;


 TYPE_2__ driver_data ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up (int *) ;

__attribute__((used)) static void release_hash_device(struct hash_device_data *device_data)
{
 spin_lock(&device_data->ctx_lock);
 device_data->current_ctx->device = ((void*)0);
 device_data->current_ctx = ((void*)0);
 spin_unlock(&device_data->ctx_lock);





 up(&driver_data.device_allocation);
}
