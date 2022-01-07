
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int dummy; } ;
struct TYPE_2__ {int slab_ce; } ;


 int GFP_KERNEL ;
 TYPE_1__ global ;
 struct intel_context* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct intel_context *intel_context_alloc(void)
{
 return kmem_cache_zalloc(global.slab_ce, GFP_KERNEL);
}
