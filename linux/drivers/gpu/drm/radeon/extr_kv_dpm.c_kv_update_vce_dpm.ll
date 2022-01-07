; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_update_vce_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_update_vce_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_vce_clock_voltage_dependency_table }
%struct.radeon_vce_clock_voltage_dependency_table = type { i32 }
%struct.radeon_ps = type { i64 }
%struct.kv_power_info = type { i32, i64, i32, i64 }

@RADEON_CG_BLOCK_VCE = common dso_local global i32 0, align 4
@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@VceBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, %struct.radeon_ps*, %struct.radeon_ps*)* @kv_update_vce_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_update_vce_dpm(%struct.radeon_device* %0, %struct.radeon_ps* %1, %struct.radeon_ps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca %struct.radeon_ps*, align 8
  %7 = alloca %struct.radeon_ps*, align 8
  %8 = alloca %struct.kv_power_info*, align 8
  %9 = alloca %struct.radeon_vce_clock_voltage_dependency_table*, align 8
  %10 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store %struct.radeon_ps* %1, %struct.radeon_ps** %6, align 8
  store %struct.radeon_ps* %2, %struct.radeon_ps** %7, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %12 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %11)
  store %struct.kv_power_info* %12, %struct.kv_power_info** %8, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %14 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.radeon_vce_clock_voltage_dependency_table* %17, %struct.radeon_vce_clock_voltage_dependency_table** %9, align 8
  %18 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %19 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %87

22:                                               ; preds = %3
  %23 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %22
  %28 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %29 = call i32 @kv_dpm_powergate_vce(%struct.radeon_device* %28, i32 0)
  %30 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %31 = load i32, i32* @RADEON_CG_BLOCK_VCE, align 4
  %32 = call i32 @cik_update_cg(%struct.radeon_device* %30, i32 %31, i32 0)
  %33 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %34 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load %struct.radeon_vce_clock_voltage_dependency_table*, %struct.radeon_vce_clock_voltage_dependency_table** %9, align 8
  %39 = getelementptr inbounds %struct.radeon_vce_clock_voltage_dependency_table, %struct.radeon_vce_clock_voltage_dependency_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  %42 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %43 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %52

44:                                               ; preds = %27
  %45 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %46 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %47 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @kv_get_vce_boot_level(%struct.radeon_device* %45, i64 %48)
  %50 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %51 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %54 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %55 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %58 = load i32, i32* @VceBootLevel, align 4
  %59 = call i64 @offsetof(i32 %57, i32 %58)
  %60 = add nsw i64 %56, %59
  %61 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %62 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %61, i32 0, i32 0
  %63 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %64 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @kv_copy_bytes_to_smc(%struct.radeon_device* %53, i64 %60, i32* %62, i32 4, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %52
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %4, align 4
  br label %107

71:                                               ; preds = %52
  %72 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %73 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %78 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %79 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %80 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = shl i32 1, %81
  %83 = call i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device* %77, i32 %78, i32 %82)
  br label %84

84:                                               ; preds = %76, %71
  %85 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %86 = call i32 @kv_enable_vce_dpm(%struct.radeon_device* %85, i32 1)
  br label %106

87:                                               ; preds = %22, %3
  %88 = load %struct.radeon_ps*, %struct.radeon_ps** %6, align 8
  %89 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load %struct.radeon_ps*, %struct.radeon_ps** %7, align 8
  %94 = getelementptr inbounds %struct.radeon_ps, %struct.radeon_ps* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %99 = call i32 @kv_enable_vce_dpm(%struct.radeon_device* %98, i32 0)
  %100 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %101 = load i32, i32* @RADEON_CG_BLOCK_VCE, align 4
  %102 = call i32 @cik_update_cg(%struct.radeon_device* %100, i32 %101, i32 1)
  %103 = load %struct.radeon_device*, %struct.radeon_device** %5, align 8
  %104 = call i32 @kv_dpm_powergate_vce(%struct.radeon_device* %103, i32 1)
  br label %105

105:                                              ; preds = %97, %92, %87
  br label %106

106:                                              ; preds = %105, %84
  store i32 0, i32* %4, align 4
  br label %107

107:                                              ; preds = %106, %69
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_dpm_powergate_vce(%struct.radeon_device*, i32) #1

declare dso_local i32 @cik_update_cg(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @kv_get_vce_boot_level(%struct.radeon_device*, i64) #1

declare dso_local i32 @kv_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @kv_enable_vce_dpm(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
