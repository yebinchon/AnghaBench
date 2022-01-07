
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int ref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline struct intel_context *intel_context_get(struct intel_context *ce)
{
 kref_get(&ce->ref);
 return ce;
}
