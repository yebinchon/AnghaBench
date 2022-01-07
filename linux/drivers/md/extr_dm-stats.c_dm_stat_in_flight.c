
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_stat_shared {int * in_flight; } ;


 size_t READ ;
 size_t WRITE ;
 int atomic_read (int *) ;

__attribute__((used)) static int dm_stat_in_flight(struct dm_stat_shared *shared)
{
 return atomic_read(&shared->in_flight[READ]) +
        atomic_read(&shared->in_flight[WRITE]);
}
