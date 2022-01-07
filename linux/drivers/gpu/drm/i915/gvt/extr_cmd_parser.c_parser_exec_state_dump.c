
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct parser_exec_state {scalar_t__ buf_type; scalar_t__ buf_addr_type; int * ip_va; int ring_id; int ip_gma; int ring_tail; int ring_head; scalar_t__ ring_size; scalar_t__ ring_start; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int id; } ;


 scalar_t__ GTT_BUFFER ;
 scalar_t__ RING_BUFFER_INSTRUCTION ;
 int cmd_val (struct parser_exec_state*,int) ;
 int gvt_dbg_cmd (char*,...) ;
 int print_opcode (int ,int ) ;

__attribute__((used)) static void parser_exec_state_dump(struct parser_exec_state *s)
{
 int cnt = 0;
 int i;

 gvt_dbg_cmd("  vgpu%d RING%d: ring_start(%08lx) ring_end(%08lx)"
   " ring_head(%08lx) ring_tail(%08lx)\n", s->vgpu->id,
   s->ring_id, s->ring_start, s->ring_start + s->ring_size,
   s->ring_head, s->ring_tail);

 gvt_dbg_cmd("  %s %s ip_gma(%08lx) ",
   s->buf_type == RING_BUFFER_INSTRUCTION ?
   "RING_BUFFER" : "BATCH_BUFFER",
   s->buf_addr_type == GTT_BUFFER ?
   "GTT" : "PPGTT", s->ip_gma);

 if (s->ip_va == ((void*)0)) {
  gvt_dbg_cmd(" ip_va(NULL)");
  return;
 }

 gvt_dbg_cmd("  ip_va=%p: %08x %08x %08x %08x\n",
   s->ip_va, cmd_val(s, 0), cmd_val(s, 1),
   cmd_val(s, 2), cmd_val(s, 3));

 print_opcode(cmd_val(s, 0), s->ring_id);

 s->ip_va = (u32 *)((((u64)s->ip_va) >> 12) << 12);

 while (cnt < 1024) {
  gvt_dbg_cmd("ip_va=%p: ", s->ip_va);
  for (i = 0; i < 8; i++)
   gvt_dbg_cmd("%08x ", cmd_val(s, i));
  gvt_dbg_cmd("\n");

  s->ip_va += 8 * sizeof(u32);
  cnt += 8;
 }
}
