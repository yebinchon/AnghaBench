
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_context {TYPE_2__* ops; int active_count; TYPE_1__* timeline; } ;
struct TYPE_4__ {int (* enter ) (struct intel_context*) ;} ;
struct TYPE_3__ {int mutex; } ;


 int lockdep_assert_held (int *) ;
 int stub1 (struct intel_context*) ;

__attribute__((used)) static inline void intel_context_enter(struct intel_context *ce)
{
 lockdep_assert_held(&ce->timeline->mutex);
 if (!ce->active_count++)
  ce->ops->enter(ce);
}
