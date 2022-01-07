; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_dpll_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_dpll_mgr.c_icl_dpll_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }
%struct.intel_shared_dpll = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.intel_dpll_hw_state }
%struct.intel_dpll_hw_state = type { i32, i32 }

@DPLL_ID_EHL_DPLL4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, %struct.intel_shared_dpll*)* @icl_dpll_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icl_dpll_write(%struct.drm_i915_private* %0, %struct.intel_shared_dpll* %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca %struct.intel_shared_dpll*, align 8
  %5 = alloca %struct.intel_dpll_hw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store %struct.intel_shared_dpll* %1, %struct.intel_shared_dpll** %4, align 8
  %9 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %10 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.intel_dpll_hw_state* %11, %struct.intel_dpll_hw_state** %5, align 8
  %12 = load %struct.intel_shared_dpll*, %struct.intel_shared_dpll** %4, align 8
  %13 = getelementptr inbounds %struct.intel_shared_dpll, %struct.intel_shared_dpll* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %18 = call i32 @INTEL_GEN(%struct.drm_i915_private* %17)
  %19 = icmp sge i32 %18, 12
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @TGL_DPLL_CFGCR0(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TGL_DPLL_CFGCR1(i32 %23)
  store i32 %24, i32* %8, align 4
  br label %42

25:                                               ; preds = %2
  %26 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %27 = call i64 @IS_ELKHARTLAKE(%struct.drm_i915_private* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @DPLL_ID_EHL_DPLL4, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @ICL_DPLL_CFGCR0(i32 4)
  store i32 %34, i32* %7, align 4
  %35 = call i32 @ICL_DPLL_CFGCR1(i32 4)
  store i32 %35, i32* %8, align 4
  br label %41

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ICL_DPLL_CFGCR0(i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @ICL_DPLL_CFGCR1(i32 %39)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %36, %33
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %45 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @I915_WRITE(i32 %43, i32 %46)
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.intel_dpll_hw_state*, %struct.intel_dpll_hw_state** %5, align 8
  %50 = getelementptr inbounds %struct.intel_dpll_hw_state, %struct.intel_dpll_hw_state* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @I915_WRITE(i32 %48, i32 %51)
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @POSTING_READ(i32 %53)
  ret void
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @TGL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @TGL_DPLL_CFGCR1(i32) #1

declare dso_local i64 @IS_ELKHARTLAKE(%struct.drm_i915_private*) #1

declare dso_local i32 @ICL_DPLL_CFGCR0(i32) #1

declare dso_local i32 @ICL_DPLL_CFGCR1(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

declare dso_local i32 @POSTING_READ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
