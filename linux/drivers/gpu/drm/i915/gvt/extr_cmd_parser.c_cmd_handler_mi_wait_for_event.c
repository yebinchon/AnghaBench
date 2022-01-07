
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct parser_exec_state {int dummy; } ;


 int MI_NOOP ;
 int cmd_ptr (struct parser_exec_state*,int ) ;
 int cmd_val (struct parser_exec_state*,int ) ;
 int is_wait_for_flip_pending (int ) ;
 int patch_value (struct parser_exec_state*,int ,int ) ;

__attribute__((used)) static int cmd_handler_mi_wait_for_event(struct parser_exec_state *s)
{
 u32 cmd = cmd_val(s, 0);

 if (!is_wait_for_flip_pending(cmd))
  return 0;

 patch_value(s, cmd_ptr(s, 0), MI_NOOP);
 return 0;
}
