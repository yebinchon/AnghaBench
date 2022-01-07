
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*) ;
 int U8 (int ) ;
 int* atom_def_dst ;
 int atom_get_dst (int *,int,int,int*,int *,int ) ;
 int atom_put_dst (int *,int,int,int*,int ,int ) ;

__attribute__((used)) static void atom_op_clear(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t saved;
 int dptr = *ptr;
 attr &= 0x38;
 attr |= atom_def_dst[attr >> 3] << 6;
 atom_get_dst(ctx, arg, attr, ptr, &saved, 0);
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, 0, saved);
}
