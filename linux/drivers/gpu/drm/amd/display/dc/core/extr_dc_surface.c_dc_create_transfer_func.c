
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_transfer_func {int refcount; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct dc_transfer_func* kvzalloc (int,int ) ;

struct dc_transfer_func *dc_create_transfer_func(void)
{
 struct dc_transfer_func *tf = kvzalloc(sizeof(*tf), GFP_KERNEL);

 if (tf == ((void*)0))
  goto alloc_fail;

 kref_init(&tf->refcount);

 return tf;

alloc_fail:
 return ((void*)0);
}
