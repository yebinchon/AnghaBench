; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_vce_dpm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_enable_vce_dpm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.radeon_clock_and_voltage_limits = type { i64 }
%struct.ci_power_info = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32 }

@PPSMC_MSG_VCEDPM_SetEnabledMask = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_Enable = common dso_local global i32 0, align 4
@PPSMC_MSG_VCEDPM_Disable = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i32)* @ci_enable_vce_dpm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_enable_vce_dpm(%struct.radeon_device* %0, i32 %1) #0 {
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ci_power_info*, align 8
  %6 = alloca %struct.radeon_clock_and_voltage_limits*, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %8)
  store %struct.ci_power_info* %9, %struct.ci_power_info** %5, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store %struct.radeon_clock_and_voltage_limits* %21, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store %struct.radeon_clock_and_voltage_limits* %27, %struct.radeon_clock_and_voltage_limits** %6, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %89

31:                                               ; preds = %28
  %32 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %33 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %36 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %78, %31
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %43
  %47 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %48 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.radeon_clock_and_voltage_limits*, %struct.radeon_clock_and_voltage_limits** %6, align 8
  %60 = getelementptr inbounds %struct.radeon_clock_and_voltage_limits, %struct.radeon_clock_and_voltage_limits* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %58, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %46
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 1, %64
  %66 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %67 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %72 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %63
  br label %81

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %46
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %7, align 4
  br label %43

81:                                               ; preds = %75, %43
  %82 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %83 = load i32, i32* @PPSMC_MSG_VCEDPM_SetEnabledMask, align 4
  %84 = load %struct.ci_power_info*, %struct.ci_power_info** %5, align 8
  %85 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @ci_send_msg_to_smc_with_parameter(%struct.radeon_device* %82, i32 %83, i32 %87)
  br label %89

89:                                               ; preds = %81, %28
  %90 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* @PPSMC_MSG_VCEDPM_Enable, align 4
  br label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @PPSMC_MSG_VCEDPM_Disable, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i64 @ci_send_msg_to_smc(%struct.radeon_device* %90, i32 %98)
  %100 = load i64, i64* @PPSMC_Result_OK, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  br label %106

106:                                              ; preds = %103, %102
  %107 = phi i32 [ 0, %102 ], [ %105, %103 ]
  ret i32 %107
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_send_msg_to_smc_with_parameter(%struct.radeon_device*, i32, i32) #1

declare dso_local i64 @ci_send_msg_to_smc(%struct.radeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
