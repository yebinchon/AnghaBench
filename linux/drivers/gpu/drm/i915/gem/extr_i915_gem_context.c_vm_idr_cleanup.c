
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int i915_vm_put (void*) ;

__attribute__((used)) static int vm_idr_cleanup(int id, void *p, void *data)
{
 i915_vm_put(p);
 return 0;
}
