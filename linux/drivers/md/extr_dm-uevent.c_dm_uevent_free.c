
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_uevent {int dummy; } ;


 int _dm_event_cache ;
 int kmem_cache_free (int ,struct dm_uevent*) ;

__attribute__((used)) static void dm_uevent_free(struct dm_uevent *event)
{
 kmem_cache_free(_dm_event_cache, event);
}
