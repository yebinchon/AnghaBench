; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_vce_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_vce_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_vce_clock_voltage_dependency_table }
%struct.amdgpu_vce_clock_voltage_dependency_table = type { i32 }
%struct.amdgpu_ps = type { i64 }
%struct.kv_power_info = type { i32, i64, i32, i64 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@VceBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, %struct.amdgpu_ps*, %struct.amdgpu_ps*)* @kv_update_vce_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_update_vce_dpm(%struct.amdgpu_device* %0, %struct.amdgpu_ps* %1, %struct.amdgpu_ps* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.amdgpu_device*, align 8
  %6 = alloca %struct.amdgpu_ps*, align 8
  %7 = alloca %struct.amdgpu_ps*, align 8
  %8 = alloca %struct.kv_power_info*, align 8
  %9 = alloca %struct.amdgpu_vce_clock_voltage_dependency_table*, align 8
  %10 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %5, align 8
  store %struct.amdgpu_ps* %1, %struct.amdgpu_ps** %6, align 8
  store %struct.amdgpu_ps* %2, %struct.amdgpu_ps** %7, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %12 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %11)
  store %struct.kv_power_info* %12, %struct.kv_power_info** %8, align 8
  %13 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %14 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.amdgpu_vce_clock_voltage_dependency_table* %17, %struct.amdgpu_vce_clock_voltage_dependency_table** %9, align 8
  %18 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %19 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %82

22:                                               ; preds = %3
  %23 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %24 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %82

27:                                               ; preds = %22
  %28 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %29 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.amdgpu_vce_clock_voltage_dependency_table*, %struct.amdgpu_vce_clock_voltage_dependency_table** %9, align 8
  %34 = getelementptr inbounds %struct.amdgpu_vce_clock_voltage_dependency_table, %struct.amdgpu_vce_clock_voltage_dependency_table* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %47

39:                                               ; preds = %27
  %40 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %41 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %42 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @kv_get_vce_boot_level(%struct.amdgpu_device* %40, i64 %43)
  %45 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %46 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %39, %32
  %48 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %49 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %50 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %53 = load i32, i32* @VceBootLevel, align 4
  %54 = call i64 @offsetof(i32 %52, i32 %53)
  %55 = add nsw i64 %51, %54
  %56 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %57 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %56, i32 0, i32 0
  %58 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %59 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %48, i64 %55, i32* %57, i32 4, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %47
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %97

66:                                               ; preds = %47
  %67 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %68 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %73 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %74 = load %struct.kv_power_info*, %struct.kv_power_info** %8, align 8
  %75 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 1, %76
  %78 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %72, i32 %73, i32 %77)
  br label %79

79:                                               ; preds = %71, %66
  %80 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %81 = call i32 @kv_enable_vce_dpm(%struct.amdgpu_device* %80, i32 1)
  br label %96

82:                                               ; preds = %22, %3
  %83 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %6, align 8
  %84 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.amdgpu_ps*, %struct.amdgpu_ps** %7, align 8
  %89 = getelementptr inbounds %struct.amdgpu_ps, %struct.amdgpu_ps* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.amdgpu_device*, %struct.amdgpu_device** %5, align 8
  %94 = call i32 @kv_enable_vce_dpm(%struct.amdgpu_device* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %87, %82
  br label %96

96:                                               ; preds = %95, %79
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %64
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_get_vce_boot_level(%struct.amdgpu_device*, i64) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @kv_enable_vce_dpm(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
