
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lima_sched_pipe {int dummy; } ;
struct lima_sched_context {int base; } ;


 int drm_sched_entity_fini (int *) ;

void lima_sched_context_fini(struct lima_sched_pipe *pipe,
        struct lima_sched_context *context)
{
 drm_sched_entity_fini(&context->base);
}
