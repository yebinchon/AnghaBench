; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/selftests/extr_..gemi915_gem_object.h_i915_gem_object_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_gem_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.drm_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.drm_i915_gem_object* (%struct.drm_file*, i32)* @i915_gem_object_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.drm_i915_gem_object* @i915_gem_object_lookup(%struct.drm_file* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_gem_object*, align 8
  store %struct.drm_file* %0, %struct.drm_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.drm_file*, %struct.drm_file** %3, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file* %7, i32 %8)
  store %struct.drm_i915_gem_object* %9, %struct.drm_i915_gem_object** %5, align 8
  %10 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %11 = icmp ne %struct.drm_i915_gem_object* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  %14 = getelementptr inbounds %struct.drm_i915_gem_object, %struct.drm_i915_gem_object* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @kref_get_unless_zero(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  store %struct.drm_i915_gem_object* null, %struct.drm_i915_gem_object** %5, align 8
  br label %19

19:                                               ; preds = %18, %12, %2
  %20 = call i32 (...) @rcu_read_unlock()
  %21 = load %struct.drm_i915_gem_object*, %struct.drm_i915_gem_object** %5, align 8
  ret %struct.drm_i915_gem_object* %21
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.drm_i915_gem_object* @i915_gem_object_lookup_rcu(%struct.drm_file*, i32) #1

declare dso_local i32 @kref_get_unless_zero(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
