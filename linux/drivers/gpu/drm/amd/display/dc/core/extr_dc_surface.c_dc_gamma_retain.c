
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_gamma {int refcount; } ;


 int kref_get (int *) ;

void dc_gamma_retain(struct dc_gamma *gamma)
{
 kref_get(&gamma->refcount);
}
