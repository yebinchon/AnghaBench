
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_4__ {int reg_block; } ;


 int SDEBUG (char*,int ) ;
 int U16 (int) ;

__attribute__((used)) static void atom_op_setregblock(atom_exec_context *ctx, int *ptr, int arg)
{
 ctx->ctx->reg_block = U16(*ptr);
 (*ptr) += 2;
 SDEBUG("   base: 0x%04X\n", ctx->ctx->reg_block);
}
