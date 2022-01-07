; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_get_current_sclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_dpm_get_current_sclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_power_info = type { %struct.sumo_pl, %struct.radeon_ps }
%struct.sumo_pl = type { i64 }
%struct.radeon_ps = type { i32 }
%struct.sumo_ps = type { i64, %struct.sumo_pl* }

@TARGET_AND_CURRENT_PROFILE_INDEX = common dso_local global i32 0, align 4
@CURR_INDEX_MASK = common dso_local global i64 0, align 8
@CURR_INDEX_SHIFT = common dso_local global i64 0, align 8
@BOOST_DPM_LEVEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sumo_dpm_get_current_sclk(%struct.radeon_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.sumo_power_info*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.sumo_ps*, align 8
  %7 = alloca %struct.sumo_pl*, align 8
  %8 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %9)
  store %struct.sumo_power_info* %10, %struct.sumo_power_info** %4, align 8
  %11 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %12 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %11, i32 0, i32 1
  store %struct.radeon_ps* %12, %struct.radeon_ps** %5, align 8
  %13 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %14 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %13)
  store %struct.sumo_ps* %14, %struct.sumo_ps** %6, align 8
  %15 = load i32, i32* @TARGET_AND_CURRENT_PROFILE_INDEX, align 4
  %16 = call i64 @RREG32(i32 %15)
  %17 = load i64, i64* @CURR_INDEX_MASK, align 8
  %18 = and i64 %16, %17
  %19 = load i64, i64* @CURR_INDEX_SHIFT, align 8
  %20 = lshr i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @BOOST_DPM_LEVEL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.sumo_power_info*, %struct.sumo_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %25, i32 0, i32 0
  store %struct.sumo_pl* %26, %struct.sumo_pl** %7, align 8
  %27 = load %struct.sumo_pl*, %struct.sumo_pl** %7, align 8
  %28 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %2, align 8
  br label %46

30:                                               ; preds = %1
  %31 = load i64, i64* %8, align 8
  %32 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %33 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp uge i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i64 0, i64* %2, align 8
  br label %46

37:                                               ; preds = %30
  %38 = load %struct.sumo_ps*, %struct.sumo_ps** %6, align 8
  %39 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %38, i32 0, i32 1
  %40 = load %struct.sumo_pl*, %struct.sumo_pl** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %40, i64 %41
  store %struct.sumo_pl* %42, %struct.sumo_pl** %7, align 8
  %43 = load %struct.sumo_pl*, %struct.sumo_pl** %7, align 8
  %44 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %2, align 8
  br label %46

46:                                               ; preds = %37, %36, %24
  %47 = load i64, i64* %2, align 8
  ret i64 %47
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i64 @RREG32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
