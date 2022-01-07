
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int refcount; } ;


 int kref_get (int *) ;

void dc_retain_state(struct dc_state *context)
{
 kref_get(&context->refcount);
}
