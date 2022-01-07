
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atom_exec_context ;


 int printk (char*) ;

__attribute__((used)) static void atom_op_beep(atom_exec_context *ctx, int *ptr, int arg)
{
 printk("ATOM BIOS beeped!\n");
}
