
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* buf_addr; int lock; } ;
struct intel_guc_log {TYPE_2__ relay; TYPE_1__* vma; } ;
struct TYPE_3__ {int obj; } ;


 int ENODEV ;
 int I915_MAP_WC ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 void* i915_gem_object_pin_map (int ,int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static int guc_log_map(struct intel_guc_log *log)
{
 void *vaddr;

 lockdep_assert_held(&log->relay.lock);

 if (!log->vma)
  return -ENODEV;






 vaddr = i915_gem_object_pin_map(log->vma->obj, I915_MAP_WC);
 if (IS_ERR(vaddr))
  return PTR_ERR(vaddr);

 log->relay.buf_addr = vaddr;

 return 0;
}
