; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_ddi_calc_wrpll_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_ddi.c_hsw_ddi_calc_wrpll_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@WRPLL_REF_MASK = common dso_local global i32 0, align 4
@FUSE_STRAP3 = common dso_local global i32 0, align 4
@HSW_REF_CLK_SELECT = common dso_local global i32 0, align 4
@WRPLL_DIVIDER_REF_MASK = common dso_local global i32 0, align 4
@WRPLL_DIVIDER_POST_MASK = common dso_local global i32 0, align 4
@WRPLL_DIVIDER_POST_SHIFT = common dso_local global i32 0, align 4
@WRPLL_DIVIDER_FB_MASK = common dso_local global i32 0, align 4
@WRPLL_DIVIDER_FB_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*, i32)* @hsw_ddi_calc_wrpll_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_ddi_calc_wrpll_link(%struct.drm_i915_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_i915_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @I915_READ(i32 %11)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @WRPLL_REF_MASK, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %36 [
    i32 128, label %16
    i32 129, label %34
    i32 130, label %35
  ]

16:                                               ; preds = %2
  %17 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %18 = call i32 @IS_HASWELL(%struct.drm_i915_private* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %4, align 8
  %22 = call i32 @IS_HSW_ULT(%struct.drm_i915_private* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* @FUSE_STRAP3, align 4
  %26 = call i32 @I915_READ(i32 %25)
  %27 = load i32, i32* @HSW_REF_CLK_SELECT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 24, i32* %6, align 4
  br label %32

31:                                               ; preds = %24
  store i32 135, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %30
  br label %39

33:                                               ; preds = %20, %16
  br label %34

34:                                               ; preds = %2, %33
  store i32 135, i32* %6, align 4
  br label %39

35:                                               ; preds = %2
  store i32 2700, i32* %6, align 4
  br label %39

36:                                               ; preds = %2
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @MISSING_CASE(i32 %37)
  store i32 0, i32* %3, align 4
  br label %61

39:                                               ; preds = %35, %34, %32
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @WRPLL_DIVIDER_REF_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @WRPLL_DIVIDER_POST_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @WRPLL_DIVIDER_POST_SHIFT, align 4
  %47 = ashr i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @WRPLL_DIVIDER_FB_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @WRPLL_DIVIDER_FB_SHIFT, align 4
  %52 = ashr i32 %50, %51
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 %53, %54
  %56 = mul nsw i32 %55, 100
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sdiv i32 %56, %59
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %39, %36
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @IS_HASWELL(%struct.drm_i915_private*) #1

declare dso_local i32 @IS_HSW_ULT(%struct.drm_i915_private*) #1

declare dso_local i32 @MISSING_CASE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
