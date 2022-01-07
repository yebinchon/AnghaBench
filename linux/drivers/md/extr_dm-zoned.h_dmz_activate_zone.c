
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_zone {int refcount; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void dmz_activate_zone(struct dm_zone *zone)
{
 atomic_inc(&zone->refcount);
}
