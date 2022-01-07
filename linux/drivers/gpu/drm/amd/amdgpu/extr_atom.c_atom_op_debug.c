
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*,int ) ;
 int U8 (int ) ;

__attribute__((used)) static void atom_op_debug(atom_exec_context *ctx, int *ptr, int arg)
{
 uint8_t val = U8((*ptr)++);
 SDEBUG("DEBUG output: 0x%02X\n", val);
}
