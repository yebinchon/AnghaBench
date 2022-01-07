
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_engine_cs {int wakeref; } ;


 int intel_wakeref_is_active (int *) ;

__attribute__((used)) static inline bool
intel_engine_pm_is_awake(const struct intel_engine_cs *engine)
{
 return intel_wakeref_is_active(&engine->wakeref);
}
