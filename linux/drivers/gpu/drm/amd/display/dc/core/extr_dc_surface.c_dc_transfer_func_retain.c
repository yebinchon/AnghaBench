
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_transfer_func {int refcount; } ;


 int kref_get (int *) ;

void dc_transfer_func_retain(struct dc_transfer_func *tf)
{
 kref_get(&tf->refcount);
}
