; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_chv_phy_powergate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/i915/display/extr_intel_display_power.c_assert_chv_phy_powergate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_i915_private = type { i32* }

@DPIO_PHY0 = common dso_local global i32 0, align 4
@PIPE_A = common dso_local global i32 0, align 4
@PIPE_C = common dso_local global i32 0, align 4
@DPIO_CH0 = common dso_local global i32 0, align 4
@_CHV_CMN_DW0_CH0 = common dso_local global i32 0, align 4
@_CHV_CMN_DW6_CH1 = common dso_local global i32 0, align 4
@DPIO_ALLDL_POWERDOWN = common dso_local global i32 0, align 4
@DPIO_ANYDL_POWERDOWN = common dso_local global i32 0, align 4
@DPIO_CH1 = common dso_local global i32 0, align 4
@DPIO_ANYDL_POWERDOWN_SHIFT_CH0 = common dso_local global i32 0, align 4
@DPIO_ANYDL_POWERDOWN_SHIFT_CH1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [92 x i8] c"Unexpected DPIO lane power down: all %d, any %d. Expected: all %d, any %d. (0x%x = 0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_i915_private*, i32, i32, i32, i32)* @assert_chv_phy_powergate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @assert_chv_phy_powergate(%struct.drm_i915_private* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.drm_i915_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.drm_i915_private* %0, %struct.drm_i915_private** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @DPIO_PHY0, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @PIPE_A, align 4
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @PIPE_C, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  %25 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %26 = getelementptr inbounds %struct.drm_i915_private, %struct.drm_i915_private* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %23
  br label %128

34:                                               ; preds = %23
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @DPIO_CH0, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @_CHV_CMN_DW0_CH0, align 4
  store i32 %39, i32* %12, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @_CHV_CMN_DW6_CH1, align 4
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %44 = call i32 @vlv_dpio_get(%struct.drm_i915_private* %43)
  %45 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @vlv_dpio_read(%struct.drm_i915_private* %45, i32 %46, i32 %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.drm_i915_private*, %struct.drm_i915_private** %6, align 8
  %50 = call i32 @vlv_dpio_put(%struct.drm_i915_private* %49)
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  %55 = icmp eq i32 %54, 15
  br i1 %55, label %56, label %68

56:                                               ; preds = %53, %42
  %57 = load i32, i32* @DPIO_ALLDL_POWERDOWN, align 4
  %58 = load i32, i32* @DPIO_ANYDL_POWERDOWN, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %14, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @DPIO_CH1, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* %13, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %14, align 4
  br label %67

67:                                               ; preds = %66, %63, %56
  br label %75

68:                                               ; preds = %53
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %68
  %72 = load i32, i32* @DPIO_ANYDL_POWERDOWN, align 4
  store i32 %72, i32* %14, align 4
  br label %74

73:                                               ; preds = %68
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %73, %71
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @DPIO_CH0, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @DPIO_ANYDL_POWERDOWN_SHIFT_CH0, align 4
  %82 = ashr i32 %80, %81
  store i32 %82, i32* %15, align 4
  br label %87

83:                                               ; preds = %75
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @DPIO_ANYDL_POWERDOWN_SHIFT_CH1, align 4
  %86 = ashr i32 %84, %85
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* @DPIO_ALLDL_POWERDOWN, align 4
  %89 = load i32, i32* @DPIO_ANYDL_POWERDOWN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %15, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %93, %94
  %96 = zext i1 %95 to i32
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @DPIO_ALLDL_POWERDOWN, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = xor i1 %100, true
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %15, align 4
  %105 = load i32, i32* @DPIO_ANYDL_POWERDOWN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @DPIO_ALLDL_POWERDOWN, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @DPIO_ANYDL_POWERDOWN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @WARN(i32 %96, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %110, i32 %117, i32 %124, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %87, %33
  ret void
}

declare dso_local i32 @vlv_dpio_get(%struct.drm_i915_private*) #1

declare dso_local i32 @vlv_dpio_read(%struct.drm_i915_private*, i32, i32) #1

declare dso_local i32 @vlv_dpio_put(%struct.drm_i915_private*) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
