
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int atom_exec_context ;


 int SDEBUG (char*,scalar_t__) ;
 scalar_t__ U16 (int) ;

__attribute__((used)) static void atom_op_processds(atom_exec_context *ctx, int *ptr, int arg)
{
 uint16_t val = U16(*ptr);
 (*ptr) += val + 2;
 SDEBUG("PROCESSDS output: 0x%02X\n", val);
}
