; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_init_early.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_uncore.c_intel_uncore_init_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_uncore = type { i32*, i32*, %struct.drm_i915_private*, i32 }
%struct.drm_i915_private = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_uncore_init_early(%struct.intel_uncore* %0, %struct.drm_i915_private* %1) #0 {
  %3 = alloca %struct.intel_uncore*, align 8
  %4 = alloca %struct.drm_i915_private*, align 8
  store %struct.intel_uncore* %0, %struct.intel_uncore** %3, align 8
  store %struct.drm_i915_private* %1, %struct.drm_i915_private** %4, align 8
  %5 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %6 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %5, i32 0, i32 3
  %7 = call i32 @spin_lock_init(i32* %6)
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %9 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %10 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %9, i32 0, i32 2
  store %struct.drm_i915_private* %8, %struct.drm_i915_private** %10, align 8
  %11 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %12 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %11, i32 0, i32 1
  %13 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %14 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %16 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %15, i32 0, i32 0
  %17 = load %struct.intel_uncore*, %struct.intel_uncore** %3, align 8
  %18 = getelementptr inbounds %struct.intel_uncore, %struct.intel_uncore* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  ret void
}

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
