; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_tp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_program_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }

@R600_TD_DFLT = common dso_local global i32 0, align 4
@R600_PM_NUMBER_OF_TC = common dso_local global i32 0, align 4
@CG_FFCT_0 = common dso_local global i64 0, align 8
@r600_utc = common dso_local global i32* null, align 8
@r600_dtc = common dso_local global i32* null, align 8
@R600_TD_AUTO = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@FIR_FORCE_TREND_SEL = common dso_local global i32 0, align 4
@R600_TD_UP = common dso_local global i32 0, align 4
@FIR_TREND_MODE = common dso_local global i32 0, align 4
@R600_TD_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @si_program_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_tp(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %5 = load i32, i32* @R600_TD_DFLT, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %29, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @R600_PM_NUMBER_OF_TC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %32

10:                                               ; preds = %6
  %11 = load i64, i64* @CG_FFCT_0, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load i32*, i32** @r600_utc, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @UTC_0(i32 %19)
  %21 = load i32*, i32** @r600_dtc, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @DTC_0(i32 %25)
  %27 = or i32 %20, %26
  %28 = call i32 @WREG32(i64 %14, i32 %27)
  br label %29

29:                                               ; preds = %10
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %6

32:                                               ; preds = %6
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @R600_TD_AUTO, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %38 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %39 = xor i32 %38, -1
  %40 = call i32 @WREG32_P(i32 %37, i32 0, i32 %39)
  br label %47

41:                                               ; preds = %32
  %42 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %43 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %44 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %45 = xor i32 %44, -1
  %46 = call i32 @WREG32_P(i32 %42, i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %36
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @R600_TD_UP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %47
  %52 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %53 = load i32, i32* @FIR_TREND_MODE, align 4
  %54 = xor i32 %53, -1
  %55 = call i32 @WREG32_P(i32 %52, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @R600_TD_DOWN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %62 = load i32, i32* @FIR_TREND_MODE, align 4
  %63 = load i32, i32* @FIR_TREND_MODE, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @WREG32_P(i32 %61, i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %60, %56
  ret void
}

declare dso_local i32 @WREG32(i64, i32) #1

declare dso_local i32 @UTC_0(i32) #1

declare dso_local i32 @DTC_0(i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
