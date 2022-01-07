
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * buf_addr; int lock; } ;
struct intel_guc_log {TYPE_2__ relay; TYPE_1__* vma; } ;
struct TYPE_3__ {int obj; } ;


 int i915_gem_object_unpin_map (int ) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void guc_log_unmap(struct intel_guc_log *log)
{
 lockdep_assert_held(&log->relay.lock);

 i915_gem_object_unpin_map(log->vma->obj);
 log->relay.buf_addr = ((void*)0);
}
