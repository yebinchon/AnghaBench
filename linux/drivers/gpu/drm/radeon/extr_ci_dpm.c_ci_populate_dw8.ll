; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_dw8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_populate_dw8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { %struct.TYPE_2__, i32, %struct.ci_pt_defaults* }
%struct.TYPE_2__ = type { i64 }
%struct.ci_pt_defaults = type { i64 }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@PmFuseTable = common dso_local global i32 0, align 4
@SMU7_Discrete_PmFuses = common dso_local global i32 0, align 4
@TdcWaterfallCtl = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_populate_dw8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_populate_dw8(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca %struct.ci_pt_defaults*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %4, align 8
  %9 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %10 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %9, i32 0, i32 2
  %11 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %10, align 8
  store %struct.ci_pt_defaults* %11, %struct.ci_pt_defaults** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %14 = load i32, i32* @SMU7_Firmware_Header, align 4
  %15 = load i32, i32* @PmFuseTable, align 4
  %16 = call i64 @offsetof(i32 %14, i32 %15)
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* @SMU7_Discrete_PmFuses, align 4
  %19 = load i32, i32* @TdcWaterfallCtl, align 4
  %20 = call i64 @offsetof(i32 %18, i32 %19)
  %21 = add nsw i64 %17, %20
  %22 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %23 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast i64* %24 to i32*
  %26 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %27 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %12, i64 %21, i32* %25, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %1
  %36 = load %struct.ci_pt_defaults*, %struct.ci_pt_defaults** %5, align 8
  %37 = getelementptr inbounds %struct.ci_pt_defaults, %struct.ci_pt_defaults* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %32
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_read_smc_sram_dword(%struct.radeon_device*, i64, i32*, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
