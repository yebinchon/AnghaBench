; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_cdclk_needs_cd2x_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_cdclk.c_intel_cdclk_needs_cd2x_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_cdclk_state = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_cdclk_needs_cd2x_update(%struct.drm_i915_private* %0, %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_i915_private*, align 8
  %6 = alloca %struct.intel_cdclk_state*, align 8
  %7 = alloca %struct.intel_cdclk_state*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %5, align 8
  store %struct.intel_cdclk_state* %1, %struct.intel_cdclk_state** %6, align 8
  store %struct.intel_cdclk_state* %2, %struct.intel_cdclk_state** %7, align 8
  %8 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %9 = call i32 @INTEL_GEN(%struct.drm_i915_private* %8)
  %10 = icmp slt i32 %9, 10
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %5, align 8
  %13 = call i32 @IS_GEN9_LP(%struct.drm_i915_private* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %43

16:                                               ; preds = %11, %3
  %17 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %6, align 8
  %18 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %7, align 8
  %21 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %6, align 8
  %26 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %7, align 8
  %29 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %24
  %33 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %6, align 8
  %34 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.intel_cdclk_state*, %struct.intel_cdclk_state** %7, align 8
  %37 = getelementptr inbounds %struct.intel_cdclk_state, %struct.intel_cdclk_state* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br label %40

40:                                               ; preds = %32, %24, %16
  %41 = phi i1 [ false, %24 ], [ false, %16 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %40, %15
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_GEN9_LP(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
