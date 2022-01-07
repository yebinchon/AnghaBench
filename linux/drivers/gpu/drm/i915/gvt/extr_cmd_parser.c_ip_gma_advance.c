
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {unsigned int ip_gma; scalar_t__ buf_type; scalar_t__ ring_start; scalar_t__ ring_size; unsigned int ip_va; } ;


 scalar_t__ RING_BUFFER_INSTRUCTION ;
 int update_ip_va (struct parser_exec_state*) ;

__attribute__((used)) static inline int ip_gma_advance(struct parser_exec_state *s,
  unsigned int dw_len)
{
 s->ip_gma += (dw_len << 2);

 if (s->buf_type == RING_BUFFER_INSTRUCTION) {
  if (s->ip_gma >= s->ring_start + s->ring_size)
   s->ip_gma -= s->ring_size;
  update_ip_va(s);
 } else {
  s->ip_va += (dw_len << 2);
 }

 return 0;
}
