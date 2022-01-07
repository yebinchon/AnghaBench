; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_enable_clock_power_gating.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_enable_clock_power_gating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_power_info = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*)* @trinity_enable_clock_power_gating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_enable_clock_power_gating(%struct.radeon_device* %0) #0 {
  %2 = alloca %struct.radeon_device*, align 8
  %3 = alloca %struct.trinity_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %2, align 8
  %4 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %5 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %4)
  store %struct.trinity_power_info* %5, %struct.trinity_power_info** %3, align 8
  %6 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %7 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %12 = call i32 @sumo_gfx_clockgating_initialize(%struct.radeon_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %15 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %20 = call i32 @trinity_mg_clockgating_initialize(%struct.radeon_device* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %23 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %28 = call i32 @trinity_gfx_powergating_initialize(%struct.radeon_device* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %31 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %36 = call i32 @trinity_ls_clockgating_enable(%struct.radeon_device* %35, i32 1)
  %37 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %38 = call i32 @trinity_mg_clockgating_enable(%struct.radeon_device* %37, i32 1)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %41 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %46 = call i32 @trinity_gfx_clockgating_enable(%struct.radeon_device* %45, i32 1)
  br label %47

47:                                               ; preds = %44, %39
  %48 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %49 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %54 = call i32 @trinity_gfx_dynamic_mgpg_enable(%struct.radeon_device* %53, i32 1)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.trinity_power_info*, %struct.trinity_power_info** %3, align 8
  %57 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.radeon_device*, %struct.radeon_device** %2, align 8
  %62 = call i32 @trinity_gfx_powergating_enable(%struct.radeon_device* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %55
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @sumo_gfx_clockgating_initialize(%struct.radeon_device*) #1

declare dso_local i32 @trinity_mg_clockgating_initialize(%struct.radeon_device*) #1

declare dso_local i32 @trinity_gfx_powergating_initialize(%struct.radeon_device*) #1

declare dso_local i32 @trinity_ls_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_mg_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_gfx_clockgating_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_gfx_dynamic_mgpg_enable(%struct.radeon_device*, i32) #1

declare dso_local i32 @trinity_gfx_powergating_enable(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
