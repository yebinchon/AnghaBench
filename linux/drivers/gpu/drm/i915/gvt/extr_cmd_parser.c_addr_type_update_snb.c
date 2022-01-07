
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_exec_state {scalar_t__ buf_type; int buf_addr_type; } ;


 int BATCH_BUFFER_ADR_SPACE_BIT (int ) ;
 int PPGTT_BUFFER ;
 scalar_t__ RING_BUFFER_INSTRUCTION ;
 int cmd_val (struct parser_exec_state*,int ) ;

__attribute__((used)) static void addr_type_update_snb(struct parser_exec_state *s)
{
 if ((s->buf_type == RING_BUFFER_INSTRUCTION) &&
   (BATCH_BUFFER_ADR_SPACE_BIT(cmd_val(s, 0)) == 1)) {
  s->buf_addr_type = PPGTT_BUFFER;
 }
}
