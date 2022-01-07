; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_coherency.c_needs_mi_store_dword.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/gem/selftests/extr_i915_gem_coherency.c_needs_mi_store_dword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32*, i32 }

@RCS0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @needs_mi_store_dword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @needs_mi_store_dword(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  %4 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %5 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %4, i32 0, i32 1
  %6 = call i64 @intel_gt_is_wedged(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %11 = load i64, i64* @RCS0, align 8
  %12 = call i32 @HAS_ENGINE(%struct.drm_i915_private* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %23

15:                                               ; preds = %9
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @RCS0, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @intel_engine_can_store_dword(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %15, %14, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @intel_gt_is_wedged(i32*) #1

declare dso_local i32 @HAS_ENGINE(%struct.drm_i915_private*, i64) #1

declare dso_local i32 @intel_engine_can_store_dword(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
