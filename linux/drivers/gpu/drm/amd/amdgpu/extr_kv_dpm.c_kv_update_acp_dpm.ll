; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_acp_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_acp_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_clock_voltage_dependency_table }
%struct.amdgpu_clock_voltage_dependency_table = type { i32 }
%struct.kv_power_info = type { i32, i64, i32, i64 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@AcpBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_ACPDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @kv_update_acp_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_update_acp_dpm(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca %struct.amdgpu_clock_voltage_dependency_table*, align 8
  %8 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %10 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %9)
  store %struct.kv_power_info* %10, %struct.kv_power_info** %6, align 8
  %11 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %12 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.amdgpu_clock_voltage_dependency_table* %15, %struct.amdgpu_clock_voltage_dependency_table** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %68, label %18

18:                                               ; preds = %2
  %19 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %20 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.amdgpu_clock_voltage_dependency_table*, %struct.amdgpu_clock_voltage_dependency_table** %7, align 8
  %25 = getelementptr inbounds %struct.amdgpu_clock_voltage_dependency_table, %struct.amdgpu_clock_voltage_dependency_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %29 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %32 = call i32 @kv_get_acp_boot_level(%struct.amdgpu_device* %31)
  %33 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %34 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %37 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %38 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %41 = load i32, i32* @AcpBootLevel, align 4
  %42 = call i64 @offsetof(i32 %40, i32 %41)
  %43 = add nsw i64 %39, %42
  %44 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %45 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %44, i32 0, i32 0
  %46 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %47 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %36, i64 %43, i32* %45, i32 4, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %35
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %75

54:                                               ; preds = %35
  %55 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %56 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %61 = load i32, i32* @PPSMC_MSG_ACPDPM_SetEnabledMask, align 4
  %62 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %63 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = shl i32 1, %64
  %66 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %60, i32 %61, i32 %65)
  br label %67

67:                                               ; preds = %59, %54
  br label %68

68:                                               ; preds = %67, %2
  %69 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i32 @kv_enable_acp_dpm(%struct.amdgpu_device* %69, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %68, %52
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @kv_get_acp_boot_level(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @kv_enable_acp_dpm(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
