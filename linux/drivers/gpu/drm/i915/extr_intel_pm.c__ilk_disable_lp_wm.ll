; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c__ilk_disable_lp_wm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_pm.c__ilk_disable_lp_wm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ilk_wm_values }
%struct.ilk_wm_values = type { i32* }

@WM1_LP_SR_EN = common dso_local global i32 0, align 4
@WM3_LP_ILK = common dso_local global i32 0, align 4
@WM2_LP_ILK = common dso_local global i32 0, align 4
@WM1_LP_ILK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @_ilk_disable_lp_wm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ilk_disable_lp_wm(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ilk_wm_values*, align 8
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %8 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.ilk_wm_values* %9, %struct.ilk_wm_values** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @WM_DIRTY_LP(i32 3)
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %16 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @WM1_LP_SR_EN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = load i32, i32* @WM1_LP_SR_EN, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %27 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* @WM3_LP_ILK, align 4
  %33 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %34 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @I915_WRITE(i32 %32, i32 %37)
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %23, %14, %2
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @WM_DIRTY_LP(i32 2)
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %46 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WM1_LP_SR_EN, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %44
  %54 = load i32, i32* @WM1_LP_SR_EN, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %57 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %55
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @WM2_LP_ILK, align 4
  %63 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %64 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @I915_WRITE(i32 %62, i32 %67)
  store i32 1, i32* %6, align 4
  br label %69

69:                                               ; preds = %53, %44, %39
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @WM_DIRTY_LP(i32 1)
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %69
  %75 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %76 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @WM1_LP_SR_EN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %74
  %84 = load i32, i32* @WM1_LP_SR_EN, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %87 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %85
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* @WM1_LP_ILK, align 4
  %93 = load %struct.ilk_wm_values*, %struct.ilk_wm_values** %5, align 8
  %94 = getelementptr inbounds %struct.ilk_wm_values, %struct.ilk_wm_values* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I915_WRITE(i32 %92, i32 %97)
  store i32 1, i32* %6, align 4
  br label %99

99:                                               ; preds = %83, %74, %69
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @WM_DIRTY_LP(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
