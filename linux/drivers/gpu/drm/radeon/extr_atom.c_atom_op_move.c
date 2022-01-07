
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int ATOM_SRC_DWORD ;
 int SDEBUG (char*) ;
 int U8 (int ) ;
 int atom_get_dst (int *,int,int,int*,int*,int ) ;
 int atom_get_src (int *,int,int*) ;
 int atom_put_dst (int *,int,int,int*,int,int) ;
 int atom_skip_dst (int *,int,int,int*) ;

__attribute__((used)) static void atom_op_move(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t attr = U8((*ptr)++);
 uint32_t src, saved;
 int dptr = *ptr;
 if (((attr >> 3) & 7) != ATOM_SRC_DWORD)
  atom_get_dst(ctx, arg, attr, ptr, &saved, 0);
 else {
  atom_skip_dst(ctx, arg, attr, ptr);
  saved = 0xCDCDCDCD;
 }
 SDEBUG("   src: ");
 src = atom_get_src(ctx, attr, ptr);
 SDEBUG("   dst: ");
 atom_put_dst(ctx, arg, attr, &dptr, src, saved);
}
