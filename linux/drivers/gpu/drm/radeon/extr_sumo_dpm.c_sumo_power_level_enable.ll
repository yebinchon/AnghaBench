; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_power_level_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_power_level_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CG_SCLK_DPM_CTRL = common dso_local global i64 0, align 8
@SCLK_FSTATE_0_VLD = common dso_local global i32 0, align 4
@SCLK_FSTATE_1_VLD = common dso_local global i32 0, align 4
@SCLK_FSTATE_2_VLD = common dso_local global i32 0, align 4
@SCLK_FSTATE_3_VLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, i32, i32)* @sumo_power_level_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_power_level_enable(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %3
  %16 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %17 = load i32, i32* %7, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @SCLK_FSTATE_0_VLD, align 4
  br label %26

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi i32 [ %24, %23 ], [ 0, %25 ]
  %28 = load i32, i32* @SCLK_FSTATE_0_VLD, align 4
  %29 = xor i32 %28, -1
  %30 = call i32 @WREG32_P(i64 %20, i32 %27, i32 %29)
  br label %91

31:                                               ; preds = %3
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %50

34:                                               ; preds = %31
  %35 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %36 = load i32, i32* %7, align 4
  %37 = mul nsw i32 %36, 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @SCLK_FSTATE_1_VLD, align 4
  br label %45

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  %47 = load i32, i32* @SCLK_FSTATE_1_VLD, align 4
  %48 = xor i32 %47, -1
  %49 = call i32 @WREG32_P(i64 %39, i32 %46, i32 %48)
  br label %90

50:                                               ; preds = %31
  %51 = load i32, i32* %8, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %69

53:                                               ; preds = %50
  %54 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %54, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = load i32, i32* @SCLK_FSTATE_2_VLD, align 4
  br label %64

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  %66 = load i32, i32* @SCLK_FSTATE_2_VLD, align 4
  %67 = xor i32 %66, -1
  %68 = call i32 @WREG32_P(i64 %58, i32 %65, i32 %67)
  br label %89

69:                                               ; preds = %50
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, 3
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = load i64, i64* @CG_SCLK_DPM_CTRL, align 8
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* @SCLK_FSTATE_3_VLD, align 4
  br label %83

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* @SCLK_FSTATE_3_VLD, align 4
  %86 = xor i32 %85, -1
  %87 = call i32 @WREG32_P(i64 %77, i32 %84, i32 %86)
  br label %88

88:                                               ; preds = %83, %69
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %45
  br label %91

91:                                               ; preds = %90, %26
  ret void
}

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
