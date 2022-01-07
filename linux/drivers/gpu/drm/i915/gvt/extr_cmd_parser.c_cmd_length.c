
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {int info; } ;


 int cmd_val (struct parser_exec_state*,int ) ;
 int get_cmd_length (int ,int ) ;

__attribute__((used)) static inline int cmd_length(struct parser_exec_state *s)
{
 return get_cmd_length(s->info, cmd_val(s, 0));
}
