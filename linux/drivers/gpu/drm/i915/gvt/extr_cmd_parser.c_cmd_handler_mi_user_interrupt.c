
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parser_exec_state {size_t ring_id; TYPE_1__* workload; } ;
struct TYPE_4__ {int mi_user_interrupt; } ;
struct TYPE_3__ {int pending_events; } ;


 int MI_NOOP ;
 TYPE_2__* cmd_interrupt_events ;
 int cmd_ptr (struct parser_exec_state*,int ) ;
 int patch_value (struct parser_exec_state*,int ,int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int cmd_handler_mi_user_interrupt(struct parser_exec_state *s)
{
 set_bit(cmd_interrupt_events[s->ring_id].mi_user_interrupt,
   s->workload->pending_events);
 patch_value(s, cmd_ptr(s, 0), MI_NOOP);
 return 0;
}
