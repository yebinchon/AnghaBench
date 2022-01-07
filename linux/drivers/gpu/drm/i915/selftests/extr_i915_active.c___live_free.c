
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct live_active {int base; } ;


 int i915_active_fini (int *) ;
 int kfree (struct live_active*) ;

__attribute__((used)) static void __live_free(struct live_active *active)
{
 i915_active_fini(&active->base);
 kfree(active);
}
