
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i915_gpu_error {int reset_count; } ;


 int atomic_read (int *) ;

__attribute__((used)) static inline u32 i915_reset_count(struct i915_gpu_error *error)
{
 return atomic_read(&error->reset_count);
}
