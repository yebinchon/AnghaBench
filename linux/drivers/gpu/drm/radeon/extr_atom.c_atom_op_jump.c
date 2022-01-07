
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int last_jump; int start; unsigned long last_jump_jiffies; int abort; TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_4__ {int cs_above; int cs_equal; } ;
 int DRM_ERROR (char*) ;
 int SDEBUG (char*,...) ;
 int U16 (int) ;
 void* jiffies ;
 int jiffies_to_msecs (unsigned long) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;

__attribute__((used)) static void atom_op_jump(atom_exec_context *ctx, int *ptr, int arg)
{
 int execute = 0, target = U16(*ptr);
 unsigned long cjiffies;

 (*ptr) += 2;
 switch (arg) {
 case 134:
  execute = ctx->ctx->cs_above;
  break;
 case 133:
  execute = ctx->ctx->cs_above || ctx->ctx->cs_equal;
  break;
 case 132:
  execute = 1;
  break;
 case 131:
  execute = !(ctx->ctx->cs_above || ctx->ctx->cs_equal);
  break;
 case 130:
  execute = !ctx->ctx->cs_above;
  break;
 case 129:
  execute = ctx->ctx->cs_equal;
  break;
 case 128:
  execute = !ctx->ctx->cs_equal;
  break;
 }
 if (arg != 132)
  SDEBUG("   taken: %s\n", execute ? "yes" : "no");
 SDEBUG("   target: 0x%04X\n", target);
 if (execute) {
  if (ctx->last_jump == (ctx->start + target)) {
   cjiffies = jiffies;
   if (time_after(cjiffies, ctx->last_jump_jiffies)) {
    cjiffies -= ctx->last_jump_jiffies;
    if ((jiffies_to_msecs(cjiffies) > 5000)) {
     DRM_ERROR("atombios stuck in loop for more than 5secs aborting\n");
     ctx->abort = 1;
    }
   } else {

    ctx->last_jump_jiffies = jiffies;
   }
  } else {
   ctx->last_jump = ctx->start + target;
   ctx->last_jump_jiffies = jiffies;
  }
  *ptr = ctx->start + target;
 }
}
