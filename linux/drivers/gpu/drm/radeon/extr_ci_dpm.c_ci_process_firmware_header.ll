; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ci_dpm.c_ci_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.ci_power_info = type { i8*, i32, i8*, i8*, i8*, i8* }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@DpmTable = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@mcRegisterTable = common dso_local global i32 0, align 4
@FanTable = common dso_local global i32 0, align 4
@mcArbDramTimingTable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ci_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_process_firmware_header(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.ci_power_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %7 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %8 = call %struct.ci_power_info* @ci_get_pi(%struct.radeon_device* %7)
  store %struct.ci_power_info* %8, %struct.ci_power_info** %4, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %11 = load i32, i32* @SMU7_Firmware_Header, align 4
  %12 = load i32, i32* @DpmTable, align 4
  %13 = call i64 @offsetof(i32 %11, i32 %12)
  %14 = add nsw i64 %10, %13
  %15 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %16 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %9, i64 %14, i8** %5, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %99

23:                                               ; preds = %1
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %26 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %28 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %29 = load i32, i32* @SMU7_Firmware_Header, align 4
  %30 = load i32, i32* @SoftRegisters, align 4
  %31 = call i64 @offsetof(i32 %29, i32 %30)
  %32 = add nsw i64 %28, %31
  %33 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %34 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %27, i64 %32, i8** %5, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %23
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %99

41:                                               ; preds = %23
  %42 = load i8*, i8** %5, align 8
  %43 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %44 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %46 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %47 = load i32, i32* @SMU7_Firmware_Header, align 4
  %48 = load i32, i32* @mcRegisterTable, align 4
  %49 = call i64 @offsetof(i32 %47, i32 %48)
  %50 = add nsw i64 %46, %49
  %51 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %52 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %45, i64 %50, i8** %5, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %99

59:                                               ; preds = %41
  %60 = load i8*, i8** %5, align 8
  %61 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %64 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %65 = load i32, i32* @SMU7_Firmware_Header, align 4
  %66 = load i32, i32* @FanTable, align 4
  %67 = call i64 @offsetof(i32 %65, i32 %66)
  %68 = add nsw i64 %64, %67
  %69 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %70 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %63, i64 %68, i8** %5, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %59
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %99

77:                                               ; preds = %59
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %80 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %82 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %83 = load i32, i32* @SMU7_Firmware_Header, align 4
  %84 = load i32, i32* @mcArbDramTimingTable, align 4
  %85 = call i64 @offsetof(i32 %83, i32 %84)
  %86 = add nsw i64 %82, %85
  %87 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ci_read_smc_sram_dword(%struct.radeon_device* %81, i64 %86, i8** %5, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %99

95:                                               ; preds = %77
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct.ci_power_info*, %struct.ci_power_info** %4, align 8
  %98 = getelementptr inbounds %struct.ci_power_info, %struct.ci_power_info* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %95, %93, %75, %57, %39, %21
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.ci_power_info* @ci_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @ci_read_smc_sram_dword(%struct.radeon_device*, i64, i8**, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
