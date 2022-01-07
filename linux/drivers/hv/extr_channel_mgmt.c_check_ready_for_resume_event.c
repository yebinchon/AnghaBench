
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ready_for_resume_event; int nr_chan_fixup_on_resume; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int complete (int *) ;
 TYPE_1__ vmbus_connection ;

__attribute__((used)) static void check_ready_for_resume_event(void)
{




 if (atomic_dec_and_test(&vmbus_connection.nr_chan_fixup_on_resume))
  complete(&vmbus_connection.ready_for_resume_event);
}
