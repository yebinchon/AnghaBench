; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_uvd_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_kv_dpm.c_kv_update_uvd_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.amdgpu_uvd_clock_voltage_dependency_table }
%struct.amdgpu_uvd_clock_voltage_dependency_table = type { i32 }
%struct.kv_power_info = type { i32, i32, i64, i64, i32 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@UvdBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_UVDDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*, i32)* @kv_update_uvd_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_update_uvd_dpm(%struct.amdgpu_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amdgpu_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca %struct.amdgpu_uvd_clock_voltage_dependency_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %11 = call %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device* %10)
  store %struct.kv_power_info* %11, %struct.kv_power_info** %6, align 8
  %12 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %13 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.amdgpu_uvd_clock_voltage_dependency_table* %16, %struct.amdgpu_uvd_clock_voltage_dependency_table** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %74, label %19

19:                                               ; preds = %2
  %20 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %7, align 8
  %21 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.amdgpu_uvd_clock_voltage_dependency_table*, %struct.amdgpu_uvd_clock_voltage_dependency_table** %7, align 8
  %26 = getelementptr inbounds %struct.amdgpu_uvd_clock_voltage_dependency_table, %struct.amdgpu_uvd_clock_voltage_dependency_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %30 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %34

31:                                               ; preds = %19
  %32 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %33 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %36 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %41 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39, %34
  %45 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %46 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = shl i32 1, %47
  store i32 %48, i32* %9, align 4
  br label %50

49:                                               ; preds = %39
  store i32 31, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %44
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %52 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %53 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %56 = load i32, i32* @UvdBootLevel, align 4
  %57 = call i64 @offsetof(i32 %55, i32 %56)
  %58 = add nsw i64 %54, %57
  %59 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %60 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %59, i32 0, i32 0
  %61 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %62 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device* %51, i64 %58, i32* %60, i32 4, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %50
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %81

69:                                               ; preds = %50
  %70 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %71 = load i32, i32* @PPSMC_MSG_UVDDPM_SetEnabledMask, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %2
  %75 = load %struct.amdgpu_device*, %struct.amdgpu_device** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i32 @kv_enable_uvd_dpm(%struct.amdgpu_device* %75, i32 %79)
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %74, %67
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_kv_copy_bytes_to_smc(%struct.amdgpu_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @amdgpu_kv_send_msg_to_smc_with_parameter(%struct.amdgpu_device*, i32, i32) #1

declare dso_local i32 @kv_enable_uvd_dpm(%struct.amdgpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
