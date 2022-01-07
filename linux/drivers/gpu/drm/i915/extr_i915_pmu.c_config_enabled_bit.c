
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;


 unsigned int ENGINE_SAMPLE_BITS ;
 unsigned int __I915_PMU_OTHER (int ) ;
 unsigned int engine_config_sample (unsigned int) ;
 scalar_t__ is_engine_config (unsigned int) ;

__attribute__((used)) static unsigned int config_enabled_bit(u64 config)
{
 if (is_engine_config(config))
  return engine_config_sample(config);
 else
  return ENGINE_SAMPLE_BITS + (config - __I915_PMU_OTHER(0));
}
