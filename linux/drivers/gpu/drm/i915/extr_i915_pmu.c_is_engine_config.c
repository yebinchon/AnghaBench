
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ __I915_PMU_OTHER (int ) ;

__attribute__((used)) static bool is_engine_config(u64 config)
{
 return config < __I915_PMU_OTHER(0);
}
