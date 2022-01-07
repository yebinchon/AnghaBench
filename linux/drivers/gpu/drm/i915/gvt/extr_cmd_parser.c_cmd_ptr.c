
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct parser_exec_state {int * ip_va; } ;



__attribute__((used)) static inline u32 *cmd_ptr(struct parser_exec_state *s, int index)
{
 return s->ip_va + (index << 2);
}
