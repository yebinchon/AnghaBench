
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*,...) ;
 int U8 (int ) ;
 int* atom_arg_mask ;
 int* atom_arg_shift ;
 int** atom_dst_to_src ;
 int atom_get_dst (int *,int,int,int*,int*,int) ;
 int atom_get_src (int *,int,int*) ;
 int atom_put_dst (int *,int,int,int*,int,int) ;

__attribute__((used)) static void atom_op_shl(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++), shift;
 uint32_t saved, dst;
 int dptr = *ptr;
 uint32_t dst_align = atom_dst_to_src[(attr >> 3) & 7][(attr >> 6) & 3];
 SDEBUG("   dst: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, &saved, 1);

 dst = saved;
 shift = atom_get_src(ctx, attr, ptr);
 SDEBUG("   shift: %d\n", shift);
 dst <<= shift;
 dst &= atom_arg_mask[dst_align];
 dst >>= atom_arg_shift[dst_align];
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, dst, saved);
}
