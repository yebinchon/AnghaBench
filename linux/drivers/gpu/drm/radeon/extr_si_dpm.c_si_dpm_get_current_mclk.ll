; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_get_current_mclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si_dpm.c_si_dpm_get_current_mclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.evergreen_power_info = type { %struct.radeon_ps }
%struct.radeon_ps = type { i32 }
%struct.ni_ps = type { i64, %struct.rv7xx_pl* }
%struct.rv7xx_pl = type { i64 }

@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURRENT_STATE_INDEX_MASK = common dso_local global i64 0, align 8
@CURRENT_STATE_INDEX_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @si_dpm_get_current_mclk(%struct.radeon_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.evergreen_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.ni_ps*, align 8
  %7 = alloca %struct.rv7xx_pl*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %9)
  store %struct.evergreen_power_info* %10, %struct.evergreen_power_info** %4, align 8
  %11 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %4, align 8
  %12 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %11, i32 0, i32 0
  store %struct.radeon_ps* %12, %struct.radeon_ps** %5, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %14 = call %struct.ni_ps* @ni_get_ps(%struct.radeon_ps* %13)
  store %struct.ni_ps* %14, %struct.ni_ps** %6, align 8
  %15 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %16 = call i64 @RREG32(i32 %15)
  %17 = load i64, i64* @CURRENT_STATE_INDEX_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @CURRENT_STATE_INDEX_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.ni_ps*, %struct.ni_ps** %6, align 8
  %23 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %36

27:                                               ; preds = %1
  %28 = load %struct.ni_ps*, %struct.ni_ps** %6, align 8
  %29 = getelementptr inbounds %struct.ni_ps, %struct.ni_ps* %28, i32 0, i32 1
  %30 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %30, i64 %31
  store %struct.rv7xx_pl* %32, %struct.rv7xx_pl** %7, align 8
  %33 = load %struct.rv7xx_pl*, %struct.rv7xx_pl** %7, align 8
  %34 = getelementptr inbounds %struct.rv7xx_pl, %struct.rv7xx_pl* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %2, align 8
  br label %36

36:                                               ; preds = %27, %26
  %37 = load i64, i64* %2, align 8
  ret i64 %37
}

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_ps* @ni_get_ps(%struct.radeon_ps*) #1

declare dso_local i64 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
