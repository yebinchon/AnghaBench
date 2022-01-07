
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_context {TYPE_1__* ops; int ref; } ;
struct TYPE_2__ {int destroy; } ;


 int kref_put (int *,int ) ;

__attribute__((used)) static inline void intel_context_put(struct intel_context *ce)
{
 kref_put(&ce->ref, ce->ops->destroy);
}
