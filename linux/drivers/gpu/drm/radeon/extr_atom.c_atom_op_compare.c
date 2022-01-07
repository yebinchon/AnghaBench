
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_6__ {int cs_equal; int cs_above; } ;


 int SDEBUG (char*,...) ;
 int U8 (int ) ;
 scalar_t__ atom_get_dst (TYPE_2__*,int,int ,int*,int *,int) ;
 scalar_t__ atom_get_src (TYPE_2__*,int ,int*) ;

__attribute__((used)) static void atom_op_compare(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t dst, src;
 SDEBUG("   src1: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, ((void*)0), 1);
 SDEBUG("   src2: ");
 src = atom_get_src(ctx, attr, ptr);
 ctx->ctx->cs_equal = (dst == src);
 ctx->ctx->cs_above = (dst > src);
 SDEBUG("   result: %s %s\n", ctx->ctx->cs_equal ? "EQ" : "NE",
        ctx->ctx->cs_above ? "GT" : "LE");
}
