
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int atom_exec_context ;


 int atom_get_src_int (int *,int ,int*,int *,int) ;

__attribute__((used)) static uint32_t atom_get_src(atom_exec_context *ctx, uint8_t attr, int *ptr)
{
 return atom_get_src_int(ctx, attr, ptr, ((void*)0), 1);
}
