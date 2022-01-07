; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_program_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_trinity_dpm.c_trinity_program_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.trinity_pl = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.trinity_power_info = type { i32* }

@SUMO_MAX_HARDWARE_POWERLEVELS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.trinity_pl*, i64)* @trinity_program_power_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trinity_program_power_level(%struct.radeon_device* %0, %struct.trinity_pl* %1, i64 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.trinity_pl*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trinity_power_info*, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.trinity_pl* %1, %struct.trinity_pl** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %9 = call %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device* %8)
  store %struct.trinity_power_info* %9, %struct.trinity_power_info** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SUMO_MAX_HARDWARE_POWERLEVELS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  br label %72

14:                                               ; preds = %3
  %15 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %18 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trinity_set_divider_value(%struct.radeon_device* %15, i64 %16, i32 %19)
  %21 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %24 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @trinity_set_vid(%struct.radeon_device* %21, i64 %22, i32 %25)
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %30 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trinity_set_ss_dividers(%struct.radeon_device* %27, i64 %28, i32 %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %36 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trinity_set_ds_dividers(%struct.radeon_device* %33, i64 %34, i32 %37)
  %39 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %40 = load i64, i64* %6, align 8
  %41 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %42 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @trinity_set_allos_gnb_slow(%struct.radeon_device* %39, i64 %40, i32 %43)
  %45 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %48 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trinity_set_force_nbp_state(%struct.radeon_device* %45, i64 %46, i32 %49)
  %51 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %54 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @trinity_set_display_wm(%struct.radeon_device* %51, i64 %52, i32 %55)
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.trinity_pl*, %struct.trinity_pl** %5, align 8
  %60 = getelementptr inbounds %struct.trinity_pl, %struct.trinity_pl* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @trinity_set_vce_wm(%struct.radeon_device* %57, i64 %58, i32 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.trinity_power_info*, %struct.trinity_power_info** %7, align 8
  %66 = getelementptr inbounds %struct.trinity_power_info, %struct.trinity_power_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @trinity_set_at(%struct.radeon_device* %63, i64 %64, i32 %70)
  br label %72

72:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.trinity_power_info* @trinity_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @trinity_set_divider_value(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_vid(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_ss_dividers(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_ds_dividers(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_allos_gnb_slow(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_force_nbp_state(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_display_wm(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_vce_wm(%struct.radeon_device*, i64, i32) #1

declare dso_local i32 @trinity_set_at(%struct.radeon_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
