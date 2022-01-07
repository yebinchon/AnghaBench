; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_ni_dpm.c_ni_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.rv7xx_power_info = type { i32, i8*, i8* }
%struct.evergreen_power_info = type { i8* }
%struct.ni_power_info = type { i8*, i8*, i8*, i8* }

@NISLANDS_SMC_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_stateTable = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_softRegisters = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_mcRegisterTable = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_fanTable = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_mcArbDramAutoRefreshTable = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_cacTable = common dso_local global i64 0, align 8
@NISLANDS_SMC_FIRMWARE_HEADER_spllTable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*)* @ni_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_process_firmware_header(%struct.radeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radeon_device*, align 8
  %4 = alloca %struct.rv7xx_power_info*, align 8
  %5 = alloca %struct.evergreen_power_info*, align 8
  %6 = alloca %struct.ni_power_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.radeon_device* %0, %struct.radeon_device** %3, align 8
  %9 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %10 = call %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device* %9)
  store %struct.rv7xx_power_info* %10, %struct.rv7xx_power_info** %4, align 8
  %11 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %12 = call %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device* %11)
  store %struct.evergreen_power_info* %12, %struct.evergreen_power_info** %5, align 8
  %13 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %14 = call %struct.ni_power_info* @ni_get_pi(%struct.radeon_device* %13)
  store %struct.ni_power_info* %14, %struct.ni_power_info** %6, align 8
  %15 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %16 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %17 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_stateTable, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %20 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %15, i64 %18, i64* %7, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %135

27:                                               ; preds = %1
  %28 = load i64, i64* %7, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %31 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %33 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %34 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_softRegisters, align 8
  %35 = add nsw i64 %33, %34
  %36 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %37 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %32, i64 %35, i64* %7, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %135

44:                                               ; preds = %27
  %45 = load i64, i64* %7, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %48 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %50 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %51 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_mcRegisterTable, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %54 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %49, i64 %52, i64* %7, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %2, align 4
  br label %135

61:                                               ; preds = %44
  %62 = load i64, i64* %7, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.evergreen_power_info*, %struct.evergreen_power_info** %5, align 8
  %65 = getelementptr inbounds %struct.evergreen_power_info, %struct.evergreen_power_info* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %67 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %68 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_fanTable, align 8
  %69 = add nsw i64 %67, %68
  %70 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %71 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %66, i64 %69, i64* %7, i32 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %135

78:                                               ; preds = %61
  %79 = load i64, i64* %7, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %82 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %84 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %85 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_mcArbDramAutoRefreshTable, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %83, i64 %86, i64* %7, i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %78
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %2, align 4
  br label %135

95:                                               ; preds = %78
  %96 = load i64, i64* %7, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %99 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %101 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %102 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_cacTable, align 8
  %103 = add nsw i64 %101, %102
  %104 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %105 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %100, i64 %103, i64* %7, i32 %106)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %95
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %2, align 4
  br label %135

112:                                              ; preds = %95
  %113 = load i64, i64* %7, align 8
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %116 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.radeon_device*, %struct.radeon_device** %3, align 8
  %118 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %119 = load i64, i64* @NISLANDS_SMC_FIRMWARE_HEADER_spllTable, align 8
  %120 = add nsw i64 %118, %119
  %121 = load %struct.rv7xx_power_info*, %struct.rv7xx_power_info** %4, align 8
  %122 = getelementptr inbounds %struct.rv7xx_power_info, %struct.rv7xx_power_info* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @rv770_read_smc_sram_dword(%struct.radeon_device* %117, i64 %120, i64* %7, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %112
  %128 = load i32, i32* %8, align 4
  store i32 %128, i32* %2, align 4
  br label %135

129:                                              ; preds = %112
  %130 = load i64, i64* %7, align 8
  %131 = inttoptr i64 %130 to i8*
  %132 = load %struct.ni_power_info*, %struct.ni_power_info** %6, align 8
  %133 = getelementptr inbounds %struct.ni_power_info, %struct.ni_power_info* %132, i32 0, i32 0
  store i8* %131, i8** %133, align 8
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %129, %127, %110, %93, %76, %59, %42, %25
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.rv7xx_power_info* @rv770_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.evergreen_power_info* @evergreen_get_pi(%struct.radeon_device*) #1

declare dso_local %struct.ni_power_info* @ni_get_pi(%struct.radeon_device*) #1

declare dso_local i32 @rv770_read_smc_sram_dword(%struct.radeon_device*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
