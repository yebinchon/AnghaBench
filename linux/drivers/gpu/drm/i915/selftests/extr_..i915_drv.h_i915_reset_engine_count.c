
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_engine_cs {size_t uabi_class; } ;
struct i915_gpu_error {int * reset_engine_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline u32 i915_reset_engine_count(struct i915_gpu_error *error,
       struct intel_engine_cs *engine)
{
 return atomic_read(&error->reset_engine_count[engine->uabi_class]);
}
