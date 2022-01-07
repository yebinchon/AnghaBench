
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** allowed; } ;


 int HFI_TRANSITION_ALLOWED ;
 int HFI_TRANSITION_UNDEFINED ;
 int IB_PORT_ACTIVE_DEFER ;
 scalar_t__ IB_PORT_DOWN ;
 int IB_PORT_NOP ;
 TYPE_1__ logical_state_transitions ;
 int pr_warn (char*,int,int) ;

__attribute__((used)) static int logical_transition_allowed(int old, int new)
{
 if (old < IB_PORT_NOP || old > IB_PORT_ACTIVE_DEFER ||
     new < IB_PORT_NOP || new > IB_PORT_ACTIVE_DEFER) {
  pr_warn("invalid logical state(s) (old %d new %d)\n",
   old, new);
  return HFI_TRANSITION_UNDEFINED;
 }

 if (new == IB_PORT_NOP)
  return HFI_TRANSITION_ALLOWED;


 old -= IB_PORT_DOWN;
 new -= IB_PORT_DOWN;

 if (old < 0 || new < 0)
  return HFI_TRANSITION_UNDEFINED;
 return logical_state_transitions.allowed[old][new];
}
