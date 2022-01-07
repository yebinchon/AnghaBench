; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_get_iclkip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display.c_lpt_get_iclkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PIXCLK_GATE = common dso_local global i32 0, align 4
@PIXCLK_GATE_UNGATE = common dso_local global i32 0, align 4
@SBI_SSCCTL6 = common dso_local global i32 0, align 4
@SBI_ICLK = common dso_local global i32 0, align 4
@SBI_SSCCTL_DISABLE = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE6 = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE_DIVSEL_MASK = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE_DIVSEL_SHIFT = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE_INCVAL_MASK = common dso_local global i32 0, align 4
@SBI_SSCDIVINTPHASE_INCVAL_SHIFT = common dso_local global i32 0, align 4
@SBI_SSCAUXDIV6 = common dso_local global i32 0, align 4
@SBI_SSCAUXDIV_FINALDIV2SEL_MASK = common dso_local global i32 0, align 4
@SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpt_get_iclkip(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 172800000, i32* %7, align 4
  store i32 64, i32* %8, align 4
  %11 = load i32, i32* @PIXCLK_GATE, align 4
  %12 = call i32 @I915_READ(i32 %11)
  %13 = load i32, i32* @PIXCLK_GATE_UNGATE, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

17:                                               ; preds = %1
  %18 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %19 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = load i32, i32* @SBI_SSCCTL6, align 4
  %23 = load i32, i32* @SBI_ICLK, align 4
  %24 = call i32 @intel_sbi_read(%struct.drm_i915_private* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @SBI_SSCCTL_DISABLE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %31 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  store i32 0, i32* %2, align 4
  br label %71

33:                                               ; preds = %17
  %34 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %35 = load i32, i32* @SBI_SSCDIVINTPHASE6, align 4
  %36 = load i32, i32* @SBI_ICLK, align 4
  %37 = call i32 @intel_sbi_read(%struct.drm_i915_private* %34, i32 %35, i32 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @SBI_SSCDIVINTPHASE_DIVSEL_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @SBI_SSCDIVINTPHASE_DIVSEL_SHIFT, align 4
  %42 = ashr i32 %40, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SBI_SSCDIVINTPHASE_INCVAL_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @SBI_SSCDIVINTPHASE_INCVAL_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %49 = load i32, i32* @SBI_SSCAUXDIV6, align 4
  %50 = load i32, i32* @SBI_ICLK, align 4
  %51 = call i32 @intel_sbi_read(%struct.drm_i915_private* %48, i32 %49, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @SBI_SSCAUXDIV_FINALDIV2SEL_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @SBI_SSCAUXDIV_FINALDIV2SEL_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %6, align 4
  %57 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %58 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 2
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %6, align 4
  %69 = shl i32 %67, %68
  %70 = call i32 @DIV_ROUND_CLOSEST(i32 %66, i32 %69)
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %33, %29, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @intel_sbi_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
