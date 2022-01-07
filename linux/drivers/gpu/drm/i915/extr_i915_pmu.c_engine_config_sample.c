
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int I915_PMU_SAMPLE_MASK ;

__attribute__((used)) static u8 engine_config_sample(u64 config)
{
 return config & I915_PMU_SAMPLE_MASK;
}
