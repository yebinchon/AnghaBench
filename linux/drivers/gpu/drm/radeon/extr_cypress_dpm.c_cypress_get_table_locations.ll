; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_table_locations.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_cypress_dpm.c_cypress_get_table_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i8*, i8* }
%struct.evergreen_power_info = type { i8* }

@EVERGREEN_SMC_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@EVERGREEN_SMC_FIRMWARE_HEADER_stateTable = common dso_local global i64 0, align 8
@EVERGREEN_SMC_FIRMWARE_HEADER_softRegisters = common dso_local global i64 0, align 8
@EVERGREEN_SMC_FIRMWARE_HEADER_mcRegisterTable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cypress_get_table_locations(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %8 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %9 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %8)
  store %struct.rv7xx_power_info* %9, %struct.rv7xx_power_info** %4, align 8
  %10 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %11 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %10)
  store %struct.evergreen_power_info* %11, %struct.evergreen_power_info** %5, align 8
  %12 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %13 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %14 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_stateTable, align 8
  %15 = add nsw i64 %13, %14
  %16 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %17 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %12, i64 %15, i64* %6, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %1
  %25 = load i64, i64* %6, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %28 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %27, i32 0, i32 2
  store i8* %26, i8** %28, align 8
  %29 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %30 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %31 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_softRegisters, align 8
  %32 = add nsw i64 %30, %31
  %33 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %34 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %29, i64 %32, i64* %6, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %24
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %45 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %47 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %48 = load i64, i64* @EVERGREEN_SMC_FIRMWARE_HEADER_mcRegisterTable, align 8
  %49 = add nsw i64 %47, %48
  %50 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %51 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %46, i64 %49, i64* %6, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %63

58:                                               ; preds = %41
  %59 = load i64, i64* %6, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %62 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %56, %39, %22
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_read_smc_sram_dword(%struct.radeon_device*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
