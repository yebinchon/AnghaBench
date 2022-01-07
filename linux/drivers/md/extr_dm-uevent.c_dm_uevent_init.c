
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DMINFO (char*) ;
 int ENOMEM ;
 int KMEM_CACHE (int ,int ) ;
 int _dm_event_cache ;
 int dm_uevent ;

int dm_uevent_init(void)
{
 _dm_event_cache = KMEM_CACHE(dm_uevent, 0);
 if (!_dm_event_cache)
  return -ENOMEM;

 DMINFO("version 1.0.3");

 return 0;
}
