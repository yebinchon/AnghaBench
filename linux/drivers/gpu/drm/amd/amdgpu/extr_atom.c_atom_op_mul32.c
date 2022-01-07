
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_7__ {TYPE_1__* ctx; } ;
typedef TYPE_2__ atom_exec_context ;
struct TYPE_6__ {int * divmul; } ;


 int SDEBUG (char*) ;
 int U8 (int ) ;
 scalar_t__ atom_get_dst (TYPE_2__*,int,int ,int*,int *,int) ;
 scalar_t__ atom_get_src (TYPE_2__*,int ,int*) ;
 int lower_32_bits (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static void atom_op_mul32(atom_exec_context *ctx, int *ptr, int arg)
{
 uint64_t val64;
 uint8_t attr = U8((*ptr)++);
 uint32_t dst, src;
 SDEBUG("   src1: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, ((void*)0), 1);
 SDEBUG("   src2: ");
 src = atom_get_src(ctx, attr, ptr);
 val64 = (uint64_t)dst * (uint64_t)src;
 ctx->ctx->divmul[0] = lower_32_bits(val64);
 ctx->ctx->divmul[1] = upper_32_bits(val64);
}
