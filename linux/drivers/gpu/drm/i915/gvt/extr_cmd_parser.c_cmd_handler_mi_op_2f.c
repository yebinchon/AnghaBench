
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
 int DWORD_FIELD (int ,int,int) ;
 int GENMASK (int,int) ;
 int cmd_address_audit (struct parser_exec_state*,unsigned long,int,int) ;
 int cmd_length (struct parser_exec_state*) ;
 int cmd_val (struct parser_exec_state*,int) ;
 int gvt_check_valid_cmd_length (int ,int) ;

__attribute__((used)) static int cmd_handler_mi_op_2f(struct parser_exec_state *s)
{
 int gmadr_bytes = s->vgpu->gvt->device_info.gmadr_bytes_in_cmd;
 int op_size = (1 << ((cmd_val(s, 0) & GENMASK(20, 19)) >> 19)) *
   sizeof(u32);
 unsigned long gma, gma_high;
 u32 valid_len = CMD_LEN(1);
 int ret = 0;

 if (!(cmd_val(s, 0) & (1 << 22)))
  return ret;


 if (DWORD_FIELD(0, 20, 19) == 1)
  valid_len += 8;
 ret = gvt_check_valid_cmd_length(cmd_length(s),
   valid_len);
 if (ret)
  return ret;

 gma = cmd_val(s, 1) & GENMASK(31, 2);
 if (gmadr_bytes == 8) {
  gma_high = cmd_val(s, 2) & GENMASK(15, 0);
  gma = (gma_high << 32) | gma;
 }
 ret = cmd_address_audit(s, gma, op_size, 0);
 return ret;
}
