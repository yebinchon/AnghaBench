; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_late_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_rv770_dpm.c_rv770_dpm_late_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32 }

@R600_TEMP_RANGE_MIN = common dso_local global i32 0, align 4
@R600_TEMP_RANGE_MAX = common dso_local global i32 0, align 4
@PPSMC_MSG_EnableThermalInterrupt = common dso_local global i32 0, align 4
@PPSMC_Result_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Could not enable thermal interrupts.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rv770_dpm_late_enable(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %6 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %7 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %42

11:                                               ; preds = %1
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @r600_is_internal_thermal_sensor(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %11
  %19 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %20 = load i32, i32* @R600_TEMP_RANGE_MIN, align 4
  %21 = load i32, i32* @R600_TEMP_RANGE_MAX, align 4
  %22 = call i32 @rv770_set_thermal_temperature_range(%struct.radeon_device* %19, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %43

27:                                               ; preds = %18
  %28 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %29 = getelementptr inbounds %struct.radeon_device, %struct.radeon_device* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %32 = call i32 @radeon_irq_set(%struct.radeon_device* %31)
  %33 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %34 = load i32, i32* @PPSMC_MSG_EnableThermalInterrupt, align 4
  %35 = call i64 @rv770_send_msg_to_smc(%struct.radeon_device* %33, i32 %34)
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @PPSMC_Result_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = call i32 @DRM_DEBUG_KMS(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %27
  br label %42

42:                                               ; preds = %41, %11, %1
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @r600_is_internal_thermal_sensor(i32) #1

declare dso_local i32 @rv770_set_thermal_temperature_range(%struct.radeon_device*, i32, i32) #1

declare dso_local i32 @radeon_irq_set(%struct.radeon_device*) #1

declare dso_local i64 @rv770_send_msg_to_smc(%struct.radeon_device*, i32) #1

declare dso_local i32 @DRM_DEBUG_KMS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
