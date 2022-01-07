
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct background_tracker {int pending_demotes; } ;


 int atomic_read (int *) ;

unsigned btracker_nr_demotions_queued(struct background_tracker *b)
{
 return atomic_read(&b->pending_demotes);
}
