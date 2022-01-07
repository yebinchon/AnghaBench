
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_state {int refcount; } ;


 int dc_state_free ;
 int kref_put (int *,int ) ;

void dc_release_state(struct dc_state *context)
{
 kref_put(&context->refcount, dc_state_free);
}
