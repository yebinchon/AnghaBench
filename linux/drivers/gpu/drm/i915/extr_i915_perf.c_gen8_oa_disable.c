
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_uncore {int dummy; } ;
struct i915_perf_stream {TYPE_1__* dev_priv; } ;
struct TYPE_2__ {struct intel_uncore uncore; } ;


 int DRM_ERROR (char*) ;
 int GEN8_OACONTROL ;
 int GEN8_OA_COUNTER_ENABLE ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;
 scalar_t__ intel_wait_for_register (struct intel_uncore*,int ,int ,int ,int) ;

__attribute__((used)) static void gen8_oa_disable(struct i915_perf_stream *stream)
{
 struct intel_uncore *uncore = &stream->dev_priv->uncore;

 intel_uncore_write(uncore, GEN8_OACONTROL, 0);
 if (intel_wait_for_register(uncore,
        GEN8_OACONTROL, GEN8_OA_COUNTER_ENABLE, 0,
        50))
  DRM_ERROR("wait for OA to be disabled timed out\n");
}
