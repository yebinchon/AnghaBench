; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_setup_uvd_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_setup_uvd_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32, i32, i32, i32 }
%struct.sumo_power_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @sumo_setup_uvd_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_setup_uvd_clocks(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.sumo_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %8)
  store %struct.sumo_power_info* %9, %struct.sumo_power_info** %7, align 8
  %10 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %11 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = call i32 @sumo_gfx_powergating_enable(%struct.radeon_device* %15, i32 0)
  br label %17

17:                                               ; preds = %14, %3
  %18 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %19 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %20 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %23 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @radeon_set_uvd_clocks(%struct.radeon_device* %18, i32 %21, i32 %24)
  %26 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %27 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %17
  %31 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %32 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %37 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %40 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @r600_is_uvd_state(i32 %38, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = call i32 @sumo_gfx_powergating_enable(%struct.radeon_device* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %35
  br label %48

48:                                               ; preds = %47, %17
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @sumo_gfx_powergating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @radeon_set_uvd_clocks(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @r600_is_uvd_state(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
