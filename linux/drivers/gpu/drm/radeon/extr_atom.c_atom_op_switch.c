
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {scalar_t__ start; } ;
typedef TYPE_1__ atom_exec_context ;


 int ATOM_ARG_IMM ;
 scalar_t__ ATOM_CASE_END ;
 scalar_t__ ATOM_CASE_MAGIC ;
 int SDEBUG (char*,...) ;
 scalar_t__ U16 (int) ;
 scalar_t__ U8 (int) ;
 scalar_t__ atom_get_src (TYPE_1__*,int,int*) ;
 int pr_info (char*) ;

__attribute__((used)) static void atom_op_switch(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t src, val, target;
 SDEBUG("   switch: ");
 src = atom_get_src(ctx, attr, ptr);
 while (U16(*ptr) != ATOM_CASE_END)
  if (U8(*ptr) == ATOM_CASE_MAGIC) {
   (*ptr)++;
   SDEBUG("   case: ");
   val =
       atom_get_src(ctx, (attr & 0x38) | ATOM_ARG_IMM,
      ptr);
   target = U16(*ptr);
   if (val == src) {
    SDEBUG("   target: %04X\n", target);
    *ptr = ctx->start + target;
    return;
   }
   (*ptr) += 2;
  } else {
   pr_info("Bad case\n");
   return;
  }
 (*ptr) += 2;
}
