
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sync_timeline {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void sync_timeline_get(struct sync_timeline *obj)
{
 kref_get(&obj->kref);
}
