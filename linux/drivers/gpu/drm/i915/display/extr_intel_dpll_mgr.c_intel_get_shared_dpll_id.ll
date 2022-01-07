; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_get_shared_dpll_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_intel_get_shared_dpll_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i64, %struct.intel_shared_dpll* }
%struct.intel_shared_dpll = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_get_shared_dpll_id(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca %struct.intel_shared_dpll*, align 8
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %5, align 8
  %6 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 1
  %9 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %8, align 8
  %10 = icmp ult %struct.intel_shared_dpll* %6, %9
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %13 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %14 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %13, i32 0, i32 1
  %15 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %14, align 8
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %15, i64 %18
  %20 = icmp ugt %struct.intel_shared_dpll* %12, %19
  br label %21

21:                                               ; preds = %11, %2
  %22 = phi i1 [ true, %2 ], [ %20, %11 ]
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %3, align 4
  br label %37

27:                                               ; preds = %21
  %28 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %5, align 8
  %29 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %30 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %29, i32 0, i32 1
  %31 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %30, align 8
  %32 = ptrtoint %struct.intel_shared_dpll* %28 to i64
  %33 = ptrtoint %struct.intel_shared_dpll* %31 to i64
  %34 = sub i64 %32, %33
  %35 = sdiv exact i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %27, %26
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
