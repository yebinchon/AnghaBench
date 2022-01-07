; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_calc_tbt_pll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_icl_calc_tbt_pll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@DDI_CLK_SEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @icl_calc_tbt_pll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @icl_calc_tbt_pll_link(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @DDI_CLK_SEL(i32 %7)
  %9 = call i32 @I915_READ(i32 %8)
  %10 = load i32, i32* @DDI_CLK_SEL_MASK, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %18 [
    i32 132, label %13
    i32 131, label %14
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %21

14:                                               ; preds = %2
  store i32 162000, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  store i32 270000, i32* %3, align 4
  br label %21

16:                                               ; preds = %2
  store i32 540000, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  store i32 810000, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @MISSING_CASE(i32 %19)
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %18, %17, %16, %15, %14, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @DDI_CLK_SEL(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
