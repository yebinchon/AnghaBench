
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct parser_exec_state {int ring_id; TYPE_1__* vgpu; } ;
struct TYPE_2__ {int scan_nonprivbb; } ;


 int cmd_val (struct parser_exec_state*,int ) ;

__attribute__((used)) static int batch_buffer_needs_scan(struct parser_exec_state *s)
{

 if (cmd_val(s, 0) & (1 << 8) &&
   !(s->vgpu->scan_nonprivbb & (1 << s->ring_id)))
  return 0;
 return 1;
}
