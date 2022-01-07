
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int dm_global_event_nr ;
 int dm_global_eventq ;
 int wake_up (int *) ;

void dm_issue_global_event(void)
{
 atomic_inc(&dm_global_event_nr);
 wake_up(&dm_global_eventq);
}
