
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srpt_send_ioctx {int state; } ;
typedef enum srpt_command_state { ____Placeholder_srpt_command_state } srpt_command_state ;


 int SRPT_STATE_DONE ;
 int SRPT_STATE_NEW ;
 int WARN_ON (int) ;

__attribute__((used)) static bool srpt_test_and_set_cmd_state(struct srpt_send_ioctx *ioctx,
     enum srpt_command_state old,
     enum srpt_command_state new)
{
 enum srpt_command_state previous;

 WARN_ON(!ioctx);
 WARN_ON(old == SRPT_STATE_DONE);
 WARN_ON(new == SRPT_STATE_NEW);

 previous = ioctx->state;
 if (previous == old)
  ioctx->state = new;

 return previous == old;
}
