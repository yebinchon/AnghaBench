
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_transfer_func {int refcount; } ;


 int dc_transfer_func_free ;
 int kref_put (int *,int ) ;

void dc_transfer_func_release(struct dc_transfer_func *tf)
{
 kref_put(&tf->refcount, dc_transfer_func_free);
}
