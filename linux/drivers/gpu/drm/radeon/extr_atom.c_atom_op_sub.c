
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*) ;
 int U8 (int ) ;
 scalar_t__ atom_get_dst (int *,int,int ,int*,scalar_t__*,int) ;
 scalar_t__ atom_get_src (int *,int ,int*) ;
 int atom_put_dst (int *,int,int ,int*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void atom_op_sub(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t dst, src, saved;
 int dptr = *ptr;
 SDEBUG("   dst: ");
 dst = atom_get_dst(ctx, arg, attr, ptr, &saved, 1);
 SDEBUG("   src: ");
 src = atom_get_src(ctx, attr, ptr);
 dst -= src;
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, dst, saved);
}
