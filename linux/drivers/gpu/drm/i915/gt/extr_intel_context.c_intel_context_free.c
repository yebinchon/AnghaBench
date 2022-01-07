
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int dummy; } ;
struct TYPE_2__ {int slab_ce; } ;


 TYPE_1__ global ;
 int kmem_cache_free (int ,struct intel_context*) ;

void intel_context_free(struct intel_context *ce)
{
 kmem_cache_free(global.slab_ce, ce);
}
