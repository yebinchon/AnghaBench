
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct multipath {int ti; } ;


 int MPATHF_QUEUE_IF_NO_PATH ;
 int MPATHF_SAVED_QUEUE_IF_NO_PATH ;
 scalar_t__ dm_noflush_suspending (int ) ;
 scalar_t__ test_bit (int ,unsigned long*) ;

__attribute__((used)) static bool __must_push_back(struct multipath *m, unsigned long flags)
{
 return ((test_bit(MPATHF_QUEUE_IF_NO_PATH, &flags) !=
   test_bit(MPATHF_SAVED_QUEUE_IF_NO_PATH, &flags)) &&
  dm_noflush_suspending(m->ti));
}
