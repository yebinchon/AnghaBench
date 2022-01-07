
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef unsigned long u32 ;
struct parser_exec_state {size_t ring_id; TYPE_4__* workload; TYPE_3__* vgpu; } ;
struct TYPE_10__ {int mi_flush_dw; } ;
struct TYPE_9__ {int pending_events; } ;
struct TYPE_8__ {unsigned long* hws_pga; TYPE_2__* gvt; } ;
struct TYPE_6__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_7__ {TYPE_1__ device_info; } ;


 unsigned long CMD_LEN (int) ;
 int GENMASK (int,int) ;
 int cmd_address_audit (struct parser_exec_state*,unsigned long,int,int) ;
 TYPE_5__* cmd_interrupt_events ;
 int cmd_length (struct parser_exec_state*) ;
 int cmd_ptr (struct parser_exec_state*,int) ;
 int cmd_val (struct parser_exec_state*,int) ;
 int gvt_check_valid_cmd_length (int ,unsigned long) ;
 int patch_value (struct parser_exec_state*,int ,unsigned long) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int cmd_handler_mi_flush_dw(struct parser_exec_state *s)
{
 int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
 unsigned long gma;
 bool index_mode = 0;
 int ret = 0;
 u32 hws_pga, val;
 u32 valid_len = CMD_LEN(2);

 ret = gvt_check_valid_cmd_length(cmd_length(s),
   valid_len);
 if (ret) {

  ret = gvt_check_valid_cmd_length(cmd_length(s),
   ++valid_len);
  return ret;
 }


 if (((cmd_val(s, 0) >> 14) & 0x3) && (cmd_val(s, 1) & (1 << 2))) {
  gma = cmd_val(s, 1) & GENMASK(31, 3);
  if (gmadr_bytes == 8)
   gma |= (cmd_val(s, 2) & GENMASK(15, 0)) << 32;

  if (cmd_val(s, 0) & (1 << 21))
   index_mode = 1;
  ret = cmd_address_audit(s, gma, sizeof(u64), index_mode);
  if (ret)
   return ret;
  if (index_mode) {
   hws_pga = s->vgpu->hws_pga[s->ring_id];
   gma = hws_pga + gma;
   patch_value(s, cmd_ptr(s, 1), gma);
   val = cmd_val(s, 0) & (~(1 << 21));
   patch_value(s, cmd_ptr(s, 0), val);
  }
 }

 if ((cmd_val(s, 0) & (1 << 8)))
  set_bit(cmd_interrupt_events[s->ring_id].mi_flush_dw,
    s->workload->pending_events);
 return ret;
}
