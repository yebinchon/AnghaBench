; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_assert_shared_dpll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_assert_shared_dpll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)* }
%struct.intel_dpll_hw_state = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"asserting DPLL %s with no DPLL\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"%s assertion failure (expected %s, current %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @assert_shared_dpll(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1, i32 %2) #0 {
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.intel_dpll_hw_state, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %10 = icmp ne %struct.intel_shared_dpll* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @onoff(i32 %13)
  %15 = call i64 @WARN(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %43

18:                                               ; preds = %3
  %19 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %20 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)*, i32 (%struct.drm_i915_private*, %struct.intel_shared_dpll*, %struct.intel_dpll_hw_state*)** %24, align 8
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %27 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %28 = call i32 %25(%struct.drm_i915_private* %26, %struct.intel_shared_dpll* %27, %struct.intel_dpll_hw_state* %8)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %34 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @onoff(i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @onoff(i32 %40)
  %42 = call i32 @I915_STATE_WARN(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @onoff(i32) #1

declare dso_local i32 @I915_STATE_WARN(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
