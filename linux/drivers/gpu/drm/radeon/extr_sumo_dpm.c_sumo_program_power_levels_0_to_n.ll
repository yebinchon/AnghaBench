; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_power_levels_0_to_n.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_power_levels_0_to_n.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_ps = type { i32 }
%struct.sumo_power_info = type { i32 }
%struct.sumo_ps = type { i32, i32, i32* }

@SUMO_POWERSTATE_FLAGS_BOOST_STATE = common dso_local global i32 0, align 4
@BOOST_DPM_LEVEL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @sumo_program_power_levels_0_to_n to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_power_levels_0_to_n(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.radeon_ps*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.sumo_power_info*, align 8
  %8 = alloca %struct.sumo_ps*, align 8
  %9 = alloca %struct.sumo_ps*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %5, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %6, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %13 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %12)
  store %struct.sumo_power_info* %13, %struct.sumo_power_info** %7, align 8
  %14 = load %struct.radeon_ps*, %struct.radeon_ps** %5, align 8
  %15 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %14)
  store %struct.sumo_ps* %15, %struct.sumo_ps** %8, align 8
  %16 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %17 = call %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps* %16)
  store %struct.sumo_ps* %17, %struct.sumo_ps** %9, align 8
  %18 = load %struct.sumo_ps*, %struct.sumo_ps** %9, align 8
  %19 = icmp eq %struct.sumo_ps* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %25

21:                                               ; preds = %3
  %22 = load %struct.sumo_ps*, %struct.sumo_ps** %9, align 8
  %23 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  br label %25

25:                                               ; preds = %21, %20
  %26 = phi i32 [ 1, %20 ], [ %24, %21 ]
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %28

28:                                               ; preds = %47, %25
  %29 = load i64, i64* %10, align 8
  %30 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %31 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %29, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %37 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %38 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @sumo_program_power_level(%struct.radeon_device* %36, i32* %41, i64 %42)
  %44 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @sumo_power_level_enable(%struct.radeon_device* %44, i64 %45, i32 1)
  br label %47

47:                                               ; preds = %35
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %10, align 8
  br label %28

50:                                               ; preds = %28
  %51 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %52 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %63, %50
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @sumo_power_level_enable(%struct.radeon_device* %60, i64 %61, i32 0)
  br label %63

63:                                               ; preds = %59
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %55

66:                                               ; preds = %55
  %67 = load %struct.sumo_ps*, %struct.sumo_ps** %8, align 8
  %68 = getelementptr inbounds %struct.sumo_ps, %struct.sumo_ps* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @SUMO_POWERSTATE_FLAGS_BOOST_STATE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %75 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %76 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %75, i32 0, i32 0
  %77 = load i64, i64* @BOOST_DPM_LEVEL, align 8
  %78 = call i32 @sumo_program_power_level(%struct.radeon_device* %74, i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %73, %66
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.sumo_ps* @sumo_get_ps(%struct.radeon_ps*) #1

declare dso_local i32 @sumo_program_power_level(%struct.radeon_device*, i32*, i64) #1

declare dso_local i32 @sumo_power_level_enable(%struct.radeon_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
