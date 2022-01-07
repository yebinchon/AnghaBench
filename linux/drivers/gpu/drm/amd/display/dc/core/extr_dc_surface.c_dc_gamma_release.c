
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_gamma {int refcount; } ;


 int dc_gamma_free ;
 int kref_put (int *,int ) ;

void dc_gamma_release(struct dc_gamma **gamma)
{
 kref_put(&(*gamma)->refcount, dc_gamma_free);
 *gamma = ((void*)0);
}
