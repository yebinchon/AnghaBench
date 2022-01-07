
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;


 int intel_context_active_acquire (struct intel_context*) ;

__attribute__((used)) static int mock_context_pin(struct intel_context *ce)
{
 return intel_context_active_acquire(ce);
}
