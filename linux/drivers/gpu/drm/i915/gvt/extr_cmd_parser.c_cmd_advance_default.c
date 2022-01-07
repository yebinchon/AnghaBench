
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {int dummy; } ;


 int cmd_length (struct parser_exec_state*) ;
 int ip_gma_advance (struct parser_exec_state*,int ) ;

__attribute__((used)) static int cmd_advance_default(struct parser_exec_state *s)
{
 return ip_gma_advance(s, cmd_length(s));
}
