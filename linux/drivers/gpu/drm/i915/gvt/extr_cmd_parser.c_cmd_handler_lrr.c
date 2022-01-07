
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct parser_exec_state {TYPE_2__* vgpu; } ;
struct TYPE_4__ {TYPE_1__* gvt; } ;
struct TYPE_3__ {int dev_priv; } ;


 int EBADRQC ;
 scalar_t__ IS_BROADWELL (int ) ;
 int cmd_length (struct parser_exec_state*) ;
 int cmd_reg (struct parser_exec_state*,int) ;
 int cmd_reg_handler (struct parser_exec_state*,int ,int,char*) ;
 scalar_t__ cmd_reg_inhibit (struct parser_exec_state*,int) ;

__attribute__((used)) static int cmd_handler_lrr(struct parser_exec_state *s)
{
 int i, ret = 0;
 int cmd_len = cmd_length(s);

 for (i = 1; i < cmd_len; i += 2) {
  if (IS_BROADWELL(s->vgpu->gvt->dev_priv))
   ret |= ((cmd_reg_inhibit(s, i) ||
     (cmd_reg_inhibit(s, i + 1)))) ?
    -EBADRQC : 0;
  if (ret)
   break;
  ret |= cmd_reg_handler(s, cmd_reg(s, i), i, "lrr-src");
  if (ret)
   break;
  ret |= cmd_reg_handler(s, cmd_reg(s, i + 1), i, "lrr-dst");
  if (ret)
   break;
 }
 return ret;
}
