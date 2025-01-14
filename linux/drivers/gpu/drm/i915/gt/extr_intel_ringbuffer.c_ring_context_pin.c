
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_context {int dummy; } ;


 int __context_pin_ppgtt (struct intel_context*) ;
 int intel_context_active_acquire (struct intel_context*) ;
 int intel_context_active_release (struct intel_context*) ;

__attribute__((used)) static int ring_context_pin(struct intel_context *ce)
{
 int err;

 err = intel_context_active_acquire(ce);
 if (err)
  return err;

 err = __context_pin_ppgtt(ce);
 if (err)
  goto err_active;

 return 0;

err_active:
 intel_context_active_release(ce);
 return err;
}
