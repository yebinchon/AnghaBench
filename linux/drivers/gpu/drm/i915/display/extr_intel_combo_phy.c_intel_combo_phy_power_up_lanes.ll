; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_intel_combo_phy_power_up_lanes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_combo_phy.c_intel_combo_phy_power_up_lanes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@PWR_DOWN_LN_3_1_0 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_3_1 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_3 = common dso_local global i32 0, align 4
@PWR_UP_ALL_LANES = common dso_local global i32 0, align 4
@PWR_DOWN_LN_2_1_0 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_3_2_1 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_1_0 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_3_2 = common dso_local global i32 0, align 4
@PWR_DOWN_LN_MASK = common dso_local global i32 0, align 4
@PWR_DOWN_LN_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intel_combo_phy_power_up_lanes(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %25 [
    i32 1, label %19
    i32 2, label %21
    i32 3, label %23
    i32 4, label %28
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @PWR_DOWN_LN_3_1_0, align 4
  store i32 %20, i32* %11, align 4
  br label %30

21:                                               ; preds = %15
  %22 = load i32, i32* @PWR_DOWN_LN_3_1, align 4
  store i32 %22, i32* %11, align 4
  br label %30

23:                                               ; preds = %15
  %24 = load i32, i32* @PWR_DOWN_LN_3, align 4
  store i32 %24, i32* %11, align 4
  br label %30

25:                                               ; preds = %15
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @MISSING_CASE(i32 %26)
  br label %28

28:                                               ; preds = %15, %25
  %29 = load i32, i32* @PWR_UP_ALL_LANES, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %28, %23, %21, %19
  br label %57

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  switch i32 %32, label %51 [
    i32 1, label %33
    i32 2, label %42
    i32 4, label %54
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @PWR_DOWN_LN_2_1_0, align 4
  br label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @PWR_DOWN_LN_3_2_1, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %11, align 4
  br label %56

42:                                               ; preds = %31
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @PWR_DOWN_LN_1_0, align 4
  br label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @PWR_DOWN_LN_3_2, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %11, align 4
  br label %56

51:                                               ; preds = %31
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @MISSING_CASE(i32 %52)
  br label %54

54:                                               ; preds = %31, %51
  %55 = load i32, i32* @PWR_UP_ALL_LANES, align 4
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %54, %49, %40
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @ICL_PORT_CL_DW10(i32 %58)
  %60 = call i32 @I915_READ(i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* @PWR_DOWN_LN_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @PWR_DOWN_LN_SHIFT, align 4
  %67 = shl i32 %65, %66
  %68 = load i32, i32* %12, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ICL_PORT_CL_DW10(i32 %70)
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @I915_WRITE(i32 %71, i32 %72)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @MISSING_CASE(i32) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @ICL_PORT_CL_DW10(i32) #1

declare dso_local i32 @I915_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
