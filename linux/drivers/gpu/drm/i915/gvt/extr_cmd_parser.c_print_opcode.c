
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct decode_info {int op_len; int nr_sub_op; TYPE_1__* sub_op; int name; } ;
struct TYPE_2__ {int low; int hi; } ;


 size_t CMD_TYPE (int) ;
 int gvt_dbg_cmd (char*,int,int ) ;
 int pr_err (char*,...) ;
 struct decode_info*** ring_decode_info ;
 int sub_op_val (int,int ,int ) ;

__attribute__((used)) static inline void print_opcode(u32 cmd, int ring_id)
{
 const struct decode_info *d_info;
 int i;

 d_info = ring_decode_info[ring_id][CMD_TYPE(cmd)];
 if (d_info == ((void*)0))
  return;

 gvt_dbg_cmd("opcode=0x%x %s sub_ops:",
   cmd >> (32 - d_info->op_len), d_info->name);

 for (i = 0; i < d_info->nr_sub_op; i++)
  pr_err("0x%x ", sub_op_val(cmd, d_info->sub_op[i].hi,
     d_info->sub_op[i].low));

 pr_err("\n");
}
