
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int engine; } ;


 int __execlists_context_pin (struct intel_context*,int ) ;

__attribute__((used)) static int execlists_context_pin(struct intel_context *ce)
{
 return __execlists_context_pin(ce, ce->engine);
}
