
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {struct intel_uncore* uncore; } ;


 int DRM_ERROR (char*) ;
 int FORCEWAKE_ALL ;
 int GEN6_BSD_RNCID ;
 int GEN6_BSD_SLEEP_INDICATOR ;
 int GEN6_BSD_SLEEP_MSG_DISABLE ;
 int GEN6_BSD_SLEEP_PSMI_CONTROL ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 scalar_t__ __intel_wait_for_register_fw (struct intel_uncore*,int ,int ,int ,int,int ,int *) ;
 int i9xx_submit_request (struct i915_request*) ;
 int intel_uncore_forcewake_get (struct intel_uncore*,int ) ;
 int intel_uncore_forcewake_put (struct intel_uncore*,int ) ;
 int intel_uncore_write64_fw (struct intel_uncore*,int ,int) ;
 int intel_uncore_write_fw (struct intel_uncore*,int ,int ) ;

__attribute__((used)) static void gen6_bsd_submit_request(struct i915_request *request)
{
 struct intel_uncore *uncore = request->engine->uncore;

 intel_uncore_forcewake_get(uncore, FORCEWAKE_ALL);






 intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
         _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));


 intel_uncore_write64_fw(uncore, GEN6_BSD_RNCID, 0x0);


 if (__intel_wait_for_register_fw(uncore,
      GEN6_BSD_SLEEP_PSMI_CONTROL,
      GEN6_BSD_SLEEP_INDICATOR,
      0,
      1000, 0, ((void*)0)))
  DRM_ERROR("timed out waiting for the BSD ring to wake up\n");


 i9xx_submit_request(request);




 intel_uncore_write_fw(uncore, GEN6_BSD_SLEEP_PSMI_CONTROL,
         _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));

 intel_uncore_forcewake_put(uncore, FORCEWAKE_ALL);
}
