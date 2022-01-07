; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_lookup_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_lookup_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { i32 }
%struct.drm_file = type { i32 }

@debug_locks = common dso_local global i64 0, align 8
@rcu_lock_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_file*, i32)* @i915_gem_object_lookup_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_file*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_file* %0, %struct.drm_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.drm_file*, %struct.drm_file** %3, align 8
  %6 = getelementptr inbounds %struct.drm_file, %struct.drm_file* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.drm_i915_gem_object* @idr_find(i32* %6, i32 %7)
  ret %struct.drm_i915_gem_object* %8
}

declare dso_local %struct.drm_i915_gem_object* @idr_find(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
