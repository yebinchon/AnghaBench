
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mapped_device {int dummy; } ;
struct dm_uevent {struct mapped_device* md; int elist; } ;


 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 int _dm_event_cache ;
 struct dm_uevent* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct dm_uevent *dm_uevent_alloc(struct mapped_device *md)
{
 struct dm_uevent *event;

 event = kmem_cache_zalloc(_dm_event_cache, GFP_ATOMIC);
 if (!event)
  return ((void*)0);

 INIT_LIST_HEAD(&event->elist);
 event->md = md;

 return event;
}
