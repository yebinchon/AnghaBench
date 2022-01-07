
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {unsigned long ip_gma; } ;


 int IS_ALIGNED (unsigned long,int) ;
 int WARN_ON (int) ;
 int update_ip_va (struct parser_exec_state*) ;

__attribute__((used)) static inline int ip_gma_set(struct parser_exec_state *s,
  unsigned long ip_gma)
{
 WARN_ON(!IS_ALIGNED(ip_gma, 4));

 s->ip_gma = ip_gma;
 update_ip_va(s);
 return 0;
}
