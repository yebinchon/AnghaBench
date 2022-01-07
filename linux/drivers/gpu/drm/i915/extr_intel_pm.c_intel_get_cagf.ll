; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_cagf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c_intel_get_cagf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@GEN9_CAGF_MASK = common dso_local global i32 0, align 4
@GEN9_CAGF_SHIFT = common dso_local global i32 0, align 4
@HSW_CAGF_MASK = common dso_local global i32 0, align 4
@HSW_CAGF_SHIFT = common dso_local global i32 0, align 4
@GEN6_CAGF_MASK = common dso_local global i32 0, align 4
@GEN6_CAGF_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_get_cagf(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %7 = call i32 @INTEL_GEN(%struct.drm_i915_private* %6)
  %8 = icmp sge i32 %7, 9
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @GEN9_CAGF_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @GEN9_CAGF_SHIFT, align 4
  %14 = ashr i32 %12, %13
  store i32 %14, i32* %5, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = call i64 @IS_HASWELL(%struct.drm_i915_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %21 = call i64 @IS_BROADWELL(%struct.drm_i915_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %15
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @HSW_CAGF_MASK, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @HSW_CAGF_SHIFT, align 4
  %28 = ashr i32 %26, %27
  store i32 %28, i32* %5, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GEN6_CAGF_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @GEN6_CAGF_SHIFT, align 4
  %34 = ashr i32 %32, %33
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %9
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_BROADWELL(%struct.drm_i915_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
