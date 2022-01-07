; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_tp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_tp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@R600_TD_DFLT = common dso_local global i32 0, align 4
@SUMO_PM_NUMBER_OF_TC = common dso_local global i32 0, align 4
@CG_FFCT_0 = common dso_local global i64 0, align 8
@sumo_utc = common dso_local global i32* null, align 8
@UTC_0_MASK = common dso_local global i32 0, align 4
@sumo_dtc = common dso_local global i32* null, align 8
@DTC_0_MASK = common dso_local global i32 0, align 4
@R600_TD_AUTO = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i64 0, align 8
@FIR_FORCE_TREND_SEL = common dso_local global i32 0, align 4
@R600_TD_UP = common dso_local global i32 0, align 4
@FIR_TREND_MODE = common dso_local global i32 0, align 4
@R600_TD_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @sumo_program_tp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_tp(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %5 = load i32, i32* @R600_TD_DFLT, align 4
  store i32 %5, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @SUMO_PM_NUMBER_OF_TC, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %42

10:                                               ; preds = %6
  %11 = load i64, i64* @CG_FFCT_0, align 8
  %12 = load i32, i32* %3, align 4
  %13 = mul nsw i32 %12, 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = load i32*, i32** @sumo_utc, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @UTC_0(i32 %20)
  %22 = load i32, i32* @UTC_0_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @WREG32_P(i64 %15, i32 %21, i32 %23)
  %25 = load i64, i64* @CG_FFCT_0, align 8
  %26 = load i32, i32* %3, align 4
  %27 = mul nsw i32 %26, 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = load i32*, i32** @sumo_dtc, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @DTC_0(i32 %34)
  %36 = load i32, i32* @DTC_0_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = call i32 @WREG32_P(i64 %29, i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %10
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %6

42:                                               ; preds = %6
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @R600_TD_AUTO, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i64, i64* @SCLK_PWRMGT_CNTL, align 8
  %48 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %49 = xor i32 %48, -1
  %50 = call i32 @WREG32_P(i64 %47, i32 0, i32 %49)
  br label %57

51:                                               ; preds = %42
  %52 = load i64, i64* @SCLK_PWRMGT_CNTL, align 8
  %53 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %54 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @WREG32_P(i64 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @R600_TD_UP, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i64, i64* @SCLK_PWRMGT_CNTL, align 8
  %63 = load i32, i32* @FIR_TREND_MODE, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @WREG32_P(i64 %62, i32 0, i32 %64)
  br label %66

66:                                               ; preds = %61, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @R600_TD_DOWN, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i64, i64* @SCLK_PWRMGT_CNTL, align 8
  %72 = load i32, i32* @FIR_TREND_MODE, align 4
  %73 = load i32, i32* @FIR_TREND_MODE, align 4
  %74 = xor i32 %73, -1
  %75 = call i32 @WREG32_P(i64 %71, i32 %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %66
  ret void
}

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

declare dso_local i32 @UTC_0(i32) #1

declare dso_local i32 @DTC_0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
