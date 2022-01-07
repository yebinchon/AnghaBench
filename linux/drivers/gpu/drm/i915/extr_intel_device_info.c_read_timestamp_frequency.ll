; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_read_timestamp_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/extr_intel_device_info.c_read_timestamp_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32 }

@CTC_MODE = common dso_local global i32 0, align 4
@CTC_SOURCE_PARAMETER_MASK = common dso_local global i32 0, align 4
@CTC_SOURCE_DIVIDE_LOGIC = common dso_local global i32 0, align 4
@CTC_SHIFT_PARAMETER_MASK = common dso_local global i32 0, align 4
@CTC_SHIFT_PARAMETER_SHIFT = common dso_local global i32 0, align 4
@RPM_CONFIG0 = common dso_local global i32 0, align 4
@GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK = common dso_local global i32 0, align 4
@GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Unknown gen, unable to read command streamer timestamp frequency\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_i915_private*)* @read_timestamp_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_timestamp_frequency(%struct.drm_i915_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_i915_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %3, align 8
  store i32 12500, i32* %4, align 4
  store i32 19200, i32* %5, align 4
  store i32 24000, i32* %6, align 4
  %12 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %13 = call i32 @INTEL_GEN(%struct.drm_i915_private* %12)
  %14 = icmp sle i32 %13, 4
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %17 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 16
  store i32 %19, i32* %2, align 4
  br label %106

20:                                               ; preds = %1
  %21 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %22 = call i32 @INTEL_GEN(%struct.drm_i915_private* %21)
  %23 = icmp sle i32 %22, 8
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %106

26:                                               ; preds = %20
  %27 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %28 = call i32 @INTEL_GEN(%struct.drm_i915_private* %27)
  %29 = icmp sle i32 %28, 9
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = load i32, i32* @CTC_MODE, align 4
  %32 = call i32 @I915_READ(i32 %31)
  store i32 %32, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @CTC_SOURCE_PARAMETER_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CTC_SOURCE_DIVIDE_LOGIC, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %40 = call i32 @read_reference_ts_freq(%struct.drm_i915_private* %39)
  store i32 %40, i32* %8, align 4
  br label %59

41:                                               ; preds = %30
  %42 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %43 = call i64 @IS_GEN9_LP(%struct.drm_i915_private* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %5, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @CTC_SHIFT_PARAMETER_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @CTC_SHIFT_PARAMETER_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = sub nsw i32 3, %55
  %57 = load i32, i32* %8, align 4
  %58 = ashr i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %49, %38
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %106

61:                                               ; preds = %26
  %62 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %63 = call i32 @INTEL_GEN(%struct.drm_i915_private* %62)
  %64 = icmp sle i32 %63, 12
  br i1 %64, label %65, label %101

65:                                               ; preds = %61
  %66 = load i32, i32* @CTC_MODE, align 4
  %67 = call i32 @I915_READ(i32 %66)
  store i32 %67, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @CTC_SOURCE_PARAMETER_MASK, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @CTC_SOURCE_DIVIDE_LOGIC, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %75 = call i32 @read_reference_ts_freq(%struct.drm_i915_private* %74)
  store i32 %75, i32* %10, align 4
  br label %99

76:                                               ; preds = %65
  %77 = load i32, i32* @RPM_CONFIG0, align 4
  %78 = call i32 @I915_READ(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %80 = call i32 @INTEL_GEN(%struct.drm_i915_private* %79)
  %81 = icmp sle i32 %80, 10
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @gen10_get_crystal_clock_freq(%struct.drm_i915_private* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  br label %90

86:                                               ; preds = %76
  %87 = load %struct.drm_i915_private*, %struct.drm_i915_private** %3, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @gen11_get_crystal_clock_freq(%struct.drm_i915_private* %87, i32 %88)
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @GEN10_RPM_CONFIG0_CTC_SHIFT_PARAMETER_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = sub nsw i32 3, %95
  %97 = load i32, i32* %10, align 4
  %98 = ashr i32 %97, %96
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %90, %73
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %2, align 4
  br label %106

101:                                              ; preds = %61
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = call i32 @MISSING_CASE(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %99, %59, %24, %15
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @INTEL_GEN(%struct.drm_i915_private*) #1

declare dso_local i32 @I915_READ(i32) #1

declare dso_local i32 @read_reference_ts_freq(%struct.drm_i915_private*) #1

declare dso_local i64 @IS_GEN9_LP(%struct.drm_i915_private*) #1

declare dso_local i32 @gen10_get_crystal_clock_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @gen11_get_crystal_clock_freq(%struct.drm_i915_private*, i32) #1

declare dso_local i32 @MISSING_CASE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
