
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stats {int list; } ;


 int list_empty (int *) ;

__attribute__((used)) static inline bool dm_stats_used(struct dm_stats *st)
{
 return !list_empty(&st->list);
}
