
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int kref; } ;


 int kref_put (int *,int ) ;
 int sync_timeline_free ;

__attribute__((used)) static void sync_timeline_put(struct sync_timeline *obj)
{
 kref_put(&obj->kref, sync_timeline_free);
}
