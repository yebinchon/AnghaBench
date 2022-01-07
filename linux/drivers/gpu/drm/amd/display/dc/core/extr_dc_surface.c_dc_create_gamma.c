
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_gamma {int refcount; } ;


 int GFP_KERNEL ;
 int kref_init (int *) ;
 struct dc_gamma* kvzalloc (int,int ) ;

struct dc_gamma *dc_create_gamma(void)
{
 struct dc_gamma *gamma = kvzalloc(sizeof(*gamma), GFP_KERNEL);

 if (gamma == ((void*)0))
  goto alloc_fail;

 kref_init(&gamma->refcount);
 return gamma;

alloc_fail:
 return ((void*)0);
}
