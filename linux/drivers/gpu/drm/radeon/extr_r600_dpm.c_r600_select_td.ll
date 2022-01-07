; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_select_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_select_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@R600_TD_AUTO = common dso_local global i32 0, align 4
@SCLK_PWRMGT_CNTL = common dso_local global i32 0, align 4
@FIR_FORCE_TREND_SEL = common dso_local global i32 0, align 4
@R600_TD_UP = common dso_local global i32 0, align 4
@FIR_TREND_MODE = common dso_local global i32 0, align 4
@R600_TD_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_select_td(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @R600_TD_AUTO, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %10 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %11 = xor i32 %10, -1
  %12 = call i32 @WREG32_P(i32 %9, i32 0, i32 %11)
  br label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %15 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %16 = load i32, i32* @FIR_FORCE_TREND_SEL, align 4
  %17 = xor i32 %16, -1
  %18 = call i32 @WREG32_P(i32 %14, i32 %15, i32 %17)
  br label %19

19:                                               ; preds = %13, %8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @R600_TD_UP, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %25 = load i32, i32* @FIR_TREND_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = call i32 @WREG32_P(i32 %24, i32 0, i32 %26)
  br label %28

28:                                               ; preds = %23, %19
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @R600_TD_DOWN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* @SCLK_PWRMGT_CNTL, align 4
  %34 = load i32, i32* @FIR_TREND_MODE, align 4
  %35 = load i32, i32* @FIR_TREND_MODE, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @WREG32_P(i32 %33, i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
