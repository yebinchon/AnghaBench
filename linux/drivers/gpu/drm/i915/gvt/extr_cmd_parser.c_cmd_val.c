
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct parser_exec_state {int dummy; } ;


 int * cmd_ptr (struct parser_exec_state*,int) ;

__attribute__((used)) static inline u32 cmd_val(struct parser_exec_state *s, int index)
{
 return *cmd_ptr(s, index);
}
