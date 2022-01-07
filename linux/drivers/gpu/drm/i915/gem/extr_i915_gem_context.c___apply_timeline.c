
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int timeline; } ;


 int __set_timeline (int *,void*) ;

__attribute__((used)) static void __apply_timeline(struct intel_context *ce, void *timeline)
{
 __set_timeline(&ce->timeline, timeline);
}
