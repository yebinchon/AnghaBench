
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_sync {int * last_vm_update; int ** sync_to; int ** semaphores; } ;


 unsigned int RADEON_NUM_RINGS ;
 unsigned int RADEON_NUM_SYNCS ;

void radeon_sync_create(struct radeon_sync *sync)
{
 unsigned i;

 for (i = 0; i < RADEON_NUM_SYNCS; ++i)
  sync->semaphores[i] = ((void*)0);

 for (i = 0; i < RADEON_NUM_RINGS; ++i)
  sync->sync_to[i] = ((void*)0);

 sync->last_vm_update = ((void*)0);
}
