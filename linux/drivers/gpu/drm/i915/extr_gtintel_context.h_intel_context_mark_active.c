
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {int active_count; TYPE_1__* timeline; } ;
struct TYPE_2__ {int mutex; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static inline void intel_context_mark_active(struct intel_context *ce)
{
 lockdep_assert_held(&ce->timeline->mutex);
 ++ce->active_count;
}
