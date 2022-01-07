
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;


 int __context_unpin_ppgtt (struct intel_context*) ;

__attribute__((used)) static void ring_context_unpin(struct intel_context *ce)
{
 __context_unpin_ppgtt(ce);
}
