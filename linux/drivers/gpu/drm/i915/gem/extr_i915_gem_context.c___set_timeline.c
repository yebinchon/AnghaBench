
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_timeline {int dummy; } ;


 struct intel_timeline* intel_timeline_get (struct intel_timeline*) ;
 int intel_timeline_put (struct intel_timeline*) ;

__attribute__((used)) static void __set_timeline(struct intel_timeline **dst,
      struct intel_timeline *src)
{
 struct intel_timeline *old = *dst;

 *dst = src ? intel_timeline_get(src) : ((void*)0);

 if (old)
  intel_timeline_put(old);
}
