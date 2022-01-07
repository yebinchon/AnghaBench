
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct parser_exec_state {TYPE_3__* vgpu; } ;
struct TYPE_6__ {TYPE_2__* gvt; } ;
struct TYPE_4__ {int gmadr_bytes_in_cmd; } ;
struct TYPE_5__ {TYPE_1__ device_info; } ;


 int CMD_LEN (int) ;
 scalar_t__ DWORD_FIELD (int ,int,int) ;
 int GENMASK (int,int) ;
 int cmd_address_audit (struct parser_exec_state*,unsigned long,int,int) ;
 int cmd_length (struct parser_exec_state*) ;
 int cmd_val (struct parser_exec_state*,int) ;
 int gvt_check_valid_cmd_length (int,int ) ;

__attribute__((used)) static int cmd_handler_mi_store_data_imm(struct parser_exec_state *s)
{
 int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
 int op_size = (cmd_length(s) - 3) * sizeof(u32);
 int core_id = (cmd_val(s, 2) & (1 << 0)) ? 1 : 0;
 unsigned long gma, gma_low, gma_high;
 u32 valid_len = CMD_LEN(2);
 int ret = 0;


 if (!(cmd_val(s, 0) & (1 << 22)))
  return 0;


 if (DWORD_FIELD(0, 21, 21))
  valid_len++;
 ret = gvt_check_valid_cmd_length(cmd_length(s),
   valid_len);
 if (ret)
  return ret;

 gma = cmd_val(s, 2) & GENMASK(31, 2);

 if (gmadr_bytes == 8) {
  gma_low = cmd_val(s, 1) & GENMASK(31, 2);
  gma_high = cmd_val(s, 2) & GENMASK(15, 0);
  gma = (gma_high << 32) | gma_low;
  core_id = (cmd_val(s, 1) & (1 << 0)) ? 1 : 0;
 }
 ret = cmd_address_audit(s, gma + op_size * core_id, op_size, 0);
 return ret;
}
