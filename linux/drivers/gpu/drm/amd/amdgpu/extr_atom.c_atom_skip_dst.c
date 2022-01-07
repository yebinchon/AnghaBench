
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int atom_exec_context ;


 int** atom_dst_to_src ;
 int atom_skip_src_int (int *,int,int*) ;

__attribute__((used)) static void atom_skip_dst(atom_exec_context *ctx, int arg, uint8_t attr, int *ptr)
{
 atom_skip_src_int(ctx,
     arg | atom_dst_to_src[(attr >> 3) & 7][(attr >> 6) &
         3] << 3, ptr);
}
