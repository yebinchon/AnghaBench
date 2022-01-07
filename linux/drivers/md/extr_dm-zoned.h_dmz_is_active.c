
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_zone {int refcount; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline bool dmz_is_active(struct dm_zone *zone)
{
 return atomic_read(&zone->refcount);
}
