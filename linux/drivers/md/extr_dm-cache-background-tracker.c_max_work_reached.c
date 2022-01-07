
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_tracker {scalar_t__ max_work; int pending_demotes; int pending_writebacks; int pending_promotes; } ;


 scalar_t__ atomic_read (int *) ;

__attribute__((used)) static bool max_work_reached(struct background_tracker *b)
{
 return atomic_read(&b->pending_promotes) +
  atomic_read(&b->pending_writebacks) +
  atomic_read(&b->pending_demotes) >= b->max_work;
}
