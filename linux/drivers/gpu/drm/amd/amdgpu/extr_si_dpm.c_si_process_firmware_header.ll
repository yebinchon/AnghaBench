; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_si_dpm.c_si_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32 }
%struct.si_power_info = type { i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@SISLANDS_SMC_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_stateTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_softRegisters = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_mcRegisterTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_fanTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_mcArbDramAutoRefreshTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_CacConfigTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_DteConfiguration = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_spllTable = common dso_local global i64 0, align 8
@SISLANDS_SMC_FIRMWARE_HEADER_PAPMParameters = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdgpu_device*)* @si_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_process_firmware_header(%struct.amdgpu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdgpu_device*, align 8
  %4 = alloca %struct.si_power_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %3, align 8
  %7 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %8 = call %struct.si_power_info* @si_get_pi(%struct.amdgpu_device* %7)
  store %struct.si_power_info* %8, %struct.si_power_info** %4, align 8
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %10 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %11 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_stateTable, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %14 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %9, i64 %12, i8** %5, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %24 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %23, i32 0, i32 9
  store i8* %22, i8** %24, align 8
  %25 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %26 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %27 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_softRegisters, align 8
  %28 = add nsw i64 %26, %27
  %29 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %30 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %25, i64 %28, i8** %5, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %154

37:                                               ; preds = %21
  %38 = load i8*, i8** %5, align 8
  %39 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %40 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %39, i32 0, i32 8
  store i8* %38, i8** %40, align 8
  %41 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %42 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %43 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_mcRegisterTable, align 8
  %44 = add nsw i64 %42, %43
  %45 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %46 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %41, i64 %44, i8** %5, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %154

53:                                               ; preds = %37
  %54 = load i8*, i8** %5, align 8
  %55 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %56 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %55, i32 0, i32 7
  store i8* %54, i8** %56, align 8
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %58 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %59 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_fanTable, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %62 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %57, i64 %60, i8** %5, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %53
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %154

69:                                               ; preds = %53
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %72 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %71, i32 0, i32 6
  store i8* %70, i8** %72, align 8
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %74 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %75 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_mcArbDramAutoRefreshTable, align 8
  %76 = add nsw i64 %74, %75
  %77 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %78 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %73, i64 %76, i8** %5, i32 %79)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %69
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %154

85:                                               ; preds = %69
  %86 = load i8*, i8** %5, align 8
  %87 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %88 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %90 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %91 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_CacConfigTable, align 8
  %92 = add nsw i64 %90, %91
  %93 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %94 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %89, i64 %92, i8** %5, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %154

101:                                              ; preds = %85
  %102 = load i8*, i8** %5, align 8
  %103 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %104 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  %105 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %106 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %107 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_DteConfiguration, align 8
  %108 = add nsw i64 %106, %107
  %109 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %110 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %105, i64 %108, i8** %5, i32 %111)
  store i32 %112, i32* %6, align 4
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %101
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %2, align 4
  br label %154

117:                                              ; preds = %101
  %118 = load i8*, i8** %5, align 8
  %119 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %120 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  %121 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %122 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %123 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_spllTable, align 8
  %124 = add nsw i64 %122, %123
  %125 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %126 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %121, i64 %124, i8** %5, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = load i32, i32* %6, align 4
  store i32 %132, i32* %2, align 4
  br label %154

133:                                              ; preds = %117
  %134 = load i8*, i8** %5, align 8
  %135 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %136 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %135, i32 0, i32 2
  store i8* %134, i8** %136, align 8
  %137 = load %struct.amdgpu_device*, %struct.amdgpu_device** %3, align 8
  %138 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_LOCATION, align 8
  %139 = load i64, i64* @SISLANDS_SMC_FIRMWARE_HEADER_PAPMParameters, align 8
  %140 = add nsw i64 %138, %139
  %141 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %142 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device* %137, i64 %140, i8** %5, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %133
  %148 = load i32, i32* %6, align 4
  store i32 %148, i32* %2, align 4
  br label %154

149:                                              ; preds = %133
  %150 = load i8*, i8** %5, align 8
  %151 = load %struct.si_power_info*, %struct.si_power_info** %4, align 8
  %152 = getelementptr inbounds %struct.si_power_info, %struct.si_power_info* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %149, %147, %131, %115, %99, %83, %67, %51, %35, %19
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.si_power_info* @si_get_pi(%struct.amdgpu_device*) #1

declare dso_local i32 @amdgpu_si_read_smc_sram_dword(%struct.amdgpu_device*, i64, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
