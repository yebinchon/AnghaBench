; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_power_level_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_r600_dpm.c_r600_power_level_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }

@CTXSW_PROFILE_INDEX = common dso_local global i64 0, align 8
@CTXSW_FREQ_STATE_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r600_power_level_enable(%struct.radeon_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = and i32 3, %8
  %10 = sub i32 3, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load i64, i64* @CTXSW_PROFILE_INDEX, align 8
  %15 = load i32, i32* %7, align 4
  %16 = mul nsw i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = load i32, i32* @CTXSW_FREQ_STATE_ENABLE, align 4
  %20 = load i32, i32* @CTXSW_FREQ_STATE_ENABLE, align 4
  %21 = xor i32 %20, -1
  %22 = call i32 @WREG32_P(i64 %18, i32 %19, i32 %21)
  br label %32

23:                                               ; preds = %3
  %24 = load i64, i64* @CTXSW_PROFILE_INDEX, align 8
  %25 = load i32, i32* %7, align 4
  %26 = mul nsw i32 %25, 4
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = load i32, i32* @CTXSW_FREQ_STATE_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = call i32 @WREG32_P(i64 %28, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %23, %13
  ret void
}

declare dso_local i32 @WREG32_P(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
