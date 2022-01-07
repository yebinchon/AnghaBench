; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_update_samu_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_kv_dpm.c_kv_update_samu_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.radeon_clock_voltage_dependency_table }
%struct.radeon_clock_voltage_dependency_table = type { i32 }
%struct.kv_power_info = type { i32, i64, i32, i64 }

@SMU7_Fusion_DpmTable = common dso_local global i32 0, align 4
@SamuBootLevel = common dso_local global i32 0, align 4
@PPSMC_MSG_SAMUDPM_SetEnabledMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @kv_update_samu_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kv_update_samu_dpm(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radeon_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kv_power_info*, align 8
  %7 = alloca %struct.radeon_clock_voltage_dependency_table*, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %10 = call %struct.kv_power_info* @kv_get_pi(%struct.radeon_device* %9)
  store %struct.kv_power_info* %10, %struct.kv_power_info** %6, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %12 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.radeon_clock_voltage_dependency_table* %15, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %66, label %18

18:                                               ; preds = %2
  %19 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %20 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load %struct.radeon_clock_voltage_dependency_table*, %struct.radeon_clock_voltage_dependency_table** %7, align 8
  %25 = getelementptr inbounds %struct.radeon_clock_voltage_dependency_table, %struct.radeon_clock_voltage_dependency_table* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %29 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  br label %33

30:                                               ; preds = %18
  %31 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %32 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %35 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %36 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @SMU7_Fusion_DpmTable, align 4
  %39 = load i32, i32* @SamuBootLevel, align 4
  %40 = call i64 @offsetof(i32 %38, i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %43 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %42, i32 0, i32 0
  %44 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %45 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @kv_copy_bytes_to_smc(%struct.radeon_device* %34, i64 %41, i32* %43, i32 4, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %73

52:                                               ; preds = %33
  %53 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %54 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %59 = load i32, i32* @PPSMC_MSG_SAMUDPM_SetEnabledMask, align 4
  %60 = load %struct.kv_power_info*, %struct.kv_power_info** %6, align 8
  %61 = getelementptr inbounds %struct.kv_power_info, %struct.kv_power_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 1, %62
  %64 = call i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device* %58, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %2
  %67 = load %struct.radeon_device*, %struct.radeon_device** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = call i32 @kv_enable_samu_dpm(%struct.radeon_device* %67, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %66, %50
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.kv_power_info* @kv_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @kv_copy_bytes_to_smc(%struct.radeon_device*, i64, i32*, i32, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i32 @kv_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @kv_enable_samu_dpm(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
