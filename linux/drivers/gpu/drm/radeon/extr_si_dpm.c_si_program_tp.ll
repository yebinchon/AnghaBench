; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_tp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_program_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @si_program_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @si_program_tp(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @R600_TD_DFLT, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %30, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @R600_PM_NUMBER_OF_TC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %6
  %11 = load i64, i64* @CG_FFCT_0, align 8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32*, i32** @r600_utc, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @UTC_0(i32 %20)
  %22 = load i32*, i32** @r600_dtc, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DTC_0(i32 %26)
  %28 = or i32 %21, %27
  %29 = call i32 @WREG32(i64 %15, i32 %28)
  br label %30

30:                                               ; preds = %10
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %6

33:                                               ; preds = %6
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @R600_TD_AUTO, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %39 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %40 = xor i32 %39, -1
  %41 = call i32 @WREG32_P(i32 %38, i32 0, i32 %40)
  br label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %44 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %45 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %46 = xor i32 %45, -1
  %47 = call i32 @WREG32_P(i32 %43, i32 %44, i32 %46)
  br label %48

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @R600_TD_UP, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %54 = load i32, i32* @FIR_TREND_MODE, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @WREG32_P(i32 %53, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @R600_TD_DOWN, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %63 = load i32, i32* @FIR_TREND_MODE, align 4
  %64 = load i32, i32* @FIR_TREND_MODE, align 4
  %65 = xor i32 %64, -1
  %66 = call i32 @WREG32_P(i32 %62, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %61, %57
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
