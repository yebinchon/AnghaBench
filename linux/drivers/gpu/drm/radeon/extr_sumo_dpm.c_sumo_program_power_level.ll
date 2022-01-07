; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_power_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_sumo_dpm.c_sumo_program_power_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.sumo_pl = type { i64, i64, i32, i32, i32, i32 }
%struct.sumo_power_info = type { i64 }
%struct.atom_clock_dividers = type { i32 }

@DEEP_SLEEP_CNTL = common dso_local global i32 0, align 4
@ENABLE_DS = common dso_local global i32 0, align 4
@COMPUTE_ENGINE_PLL_PARAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_device*, %struct.sumo_pl*, i32)* @sumo_program_power_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumo_program_power_level(%struct.radeon_device* %0, %struct.sumo_pl* %1, i32 %2) #0 {
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca %struct.sumo_pl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sumo_power_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.atom_clock_dividers, align 4
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store %struct.sumo_pl* %1, %struct.sumo_pl** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = call %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device* %11)
  store %struct.sumo_power_info* %12, %struct.sumo_power_info** %7, align 8
  %13 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %14 = call i32 @RREG32(i32 %13)
  %15 = load i32, i32* @ENABLE_DS, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %18 = load i32, i32* @COMPUTE_ENGINE_PLL_PARAM, align 4
  %19 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %20 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @radeon_atom_get_clock_dividers(%struct.radeon_device* %17, i32 %18, i32 %21, i32 0, %struct.atom_clock_dividers* %9)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  br label %96

26:                                               ; preds = %3
  %27 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %28 = load i32, i32* %6, align 4
  %29 = getelementptr inbounds %struct.atom_clock_dividers, %struct.atom_clock_dividers* %9, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sumo_set_divider_value(%struct.radeon_device* %27, i32 %28, i32 %30)
  %32 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %35 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @sumo_set_vid(%struct.radeon_device* %32, i32 %33, i32 %36)
  %38 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %39 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %26
  %43 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %44 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %52 = load i32, i32* @ENABLE_DS, align 4
  %53 = xor i32 %52, -1
  %54 = call i32 @WREG32_P(i32 %51, i32 0, i32 %53)
  br label %55

55:                                               ; preds = %50, %47
  br label %78

56:                                               ; preds = %42
  %57 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %60 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @sumo_set_ss_dividers(%struct.radeon_device* %57, i32 %58, i64 %61)
  %63 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %66 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @sumo_set_ds_dividers(%struct.radeon_device* %63, i32 %64, i64 %67)
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %56
  %72 = load i32, i32* @DEEP_SLEEP_CNTL, align 4
  %73 = load i32, i32* @ENABLE_DS, align 4
  %74 = load i32, i32* @ENABLE_DS, align 4
  %75 = xor i32 %74, -1
  %76 = call i32 @WREG32_P(i32 %72, i32 %73, i32 %75)
  br label %77

77:                                               ; preds = %71, %56
  br label %78

78:                                               ; preds = %77, %55
  %79 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %82 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @sumo_set_allos_gnb_slow(%struct.radeon_device* %79, i32 %80, i32 %83)
  %85 = load %struct.sumo_power_info*, %struct.sumo_power_info** %7, align 8
  %86 = getelementptr inbounds %struct.sumo_power_info, %struct.sumo_power_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.sumo_pl*, %struct.sumo_pl** %5, align 8
  %93 = getelementptr inbounds %struct.sumo_pl, %struct.sumo_pl* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @sumo_set_tdp_limit(%struct.radeon_device* %90, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %25, %89, %78
  ret void
}

declare dso_local %struct.sumo_power_info* @sumo_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @RREG32(i32) #1

declare dso_local i32 @radeon_atom_get_clock_dividers(%struct.radeon_device*, i32, i32, i32, %struct.atom_clock_dividers*) #1

declare dso_local i32 @sumo_set_divider_value(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @sumo_set_vid(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @WREG32_P(i32, i32, i32) #1

declare dso_local i32 @sumo_set_ss_dividers(%struct.radeon_device*, i32, i64) #1

declare dso_local i32 @sumo_set_ds_dividers(%struct.radeon_device*, i32, i64) #1

declare dso_local i32 @sumo_set_allos_gnb_slow(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @sumo_set_tdp_limit(%struct.radeon_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
