; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_pm_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_pm_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i32, i32, i64 }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@PmFuseTable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_pm_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_pm_base(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %4, align 8
  %9 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %10 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %1
  %14 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %15 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %16 = load i32, i32* @SMU7_Firmware_Header, align 4
  %17 = load i32, i32* @PmFuseTable, align 4
  %18 = call i64 @offsetof(i32 %16, i32 %17)
  %19 = add nsw i64 %15, %18
  %20 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %21 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %14, i64 %19, i32* %5, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %99

28:                                               ; preds = %13
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = call i32 @ci_populate_bapm_vddc_vid_sidd(%struct.radeon_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %99

35:                                               ; preds = %28
  %36 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %37 = call i32 @ci_populate_vddc_vid(%struct.radeon_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %99

42:                                               ; preds = %35
  %43 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %44 = call i32 @ci_populate_svi_load_line(%struct.radeon_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %99

49:                                               ; preds = %42
  %50 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %51 = call i32 @ci_populate_tdc_limit(%struct.radeon_device* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %99

56:                                               ; preds = %49
  %57 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %58 = call i32 @ci_populate_dw8(%struct.radeon_device* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %99

63:                                               ; preds = %56
  %64 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %65 = call i32 @ci_populate_fuzzy_fan(%struct.radeon_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %99

70:                                               ; preds = %63
  %71 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %72 = call i32 @ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(%struct.radeon_device* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %99

77:                                               ; preds = %70
  %78 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %79 = call i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.radeon_device* %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %99

84:                                               ; preds = %77
  %85 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %87, i32 0, i32 1
  %89 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %90 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ci_copy_bytes_to_smc(%struct.radeon_device* %85, i32 %86, i32* %88, i32 4, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %2, align 4
  br label %99

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %1
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %95, %82, %75, %68, %61, %54, %47, %40, %33, %26
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_read_smc_sram_dword(%struct.radeon_device*, i64, i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @ci_populate_bapm_vddc_vid_sidd(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_vddc_vid(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_svi_load_line(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_tdc_limit(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_dw8(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_fuzzy_fan(%struct.radeon_device*) #1

declare dso_local i32 @ci_min_max_v_gnbl_pm_lid_from_bapm_vddc(%struct.radeon_device*) #1

declare dso_local i32 @ci_populate_bapm_vddc_base_leakage_sidd(%struct.radeon_device*) #1

declare dso_local i32 @ci_copy_bytes_to_smc(%struct.radeon_device*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
