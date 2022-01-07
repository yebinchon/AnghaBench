; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_ci_smumgr.c_ci_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.smu7_hwmgr = type { i8* }
%struct.ci_smumgr = type { i8*, i8*, i8*, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU7_Firmware_Header = common dso_local global i32 0, align 4
@DpmTable = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@mcRegisterTable = common dso_local global i32 0, align 4
@FanTable = common dso_local global i32 0, align 4
@mcArbDramTimingTable = common dso_local global i32 0, align 4
@Version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @ci_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_process_firmware_header(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_hwmgr*, align 8
  %4 = alloca %struct.smu7_hwmgr*, align 8
  %5 = alloca %struct.ci_smumgr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %3, align 8
  %9 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %10 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %12, %struct.smu7_hwmgr** %4, align 8
  %13 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %14 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.ci_smumgr*
  store %struct.ci_smumgr* %16, %struct.ci_smumgr** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %18 = call i64 @ci_upload_firmware(%struct.pp_hwmgr* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %147

23:                                               ; preds = %1
  %24 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %25 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %26 = load i32, i32* @SMU7_Firmware_Header, align 4
  %27 = load i32, i32* @DpmTable, align 4
  %28 = call i64 @offsetof(i32 %26, i32 %27)
  %29 = add nsw i64 %25, %28
  %30 = load i32, i32* @SMC_RAM_END, align 4
  %31 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %24, i64 %29, i8** %6, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 0, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %23
  %35 = load i8*, i8** %6, align 8
  %36 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %37 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  br label %38

38:                                               ; preds = %34, %23
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 0, %39
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %8, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %8, align 4
  %44 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %45 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %46 = load i32, i32* @SMU7_Firmware_Header, align 4
  %47 = load i32, i32* @SoftRegisters, align 4
  %48 = call i64 @offsetof(i32 %46, i32 %47)
  %49 = add nsw i64 %45, %48
  %50 = load i32, i32* @SMC_RAM_END, align 4
  %51 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %44, i64 %49, i8** %6, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 0, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %38
  %55 = load i8*, i8** %6, align 8
  %56 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %4, align 8
  %57 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %60 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %59, i32 0, i32 3
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %54, %38
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 0, %62
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  %67 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %68 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %69 = load i32, i32* @SMU7_Firmware_Header, align 4
  %70 = load i32, i32* @mcRegisterTable, align 4
  %71 = call i64 @offsetof(i32 %69, i32 %70)
  %72 = add nsw i64 %68, %71
  %73 = load i32, i32* @SMC_RAM_END, align 4
  %74 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %67, i64 %72, i8** %6, i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 0, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %61
  %78 = load i8*, i8** %6, align 8
  %79 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %80 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %81

81:                                               ; preds = %77, %61
  %82 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %83 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %84 = load i32, i32* @SMU7_Firmware_Header, align 4
  %85 = load i32, i32* @FanTable, align 4
  %86 = call i64 @offsetof(i32 %84, i32 %85)
  %87 = add nsw i64 %83, %86
  %88 = load i32, i32* @SMC_RAM_END, align 4
  %89 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %82, i64 %87, i8** %6, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 0, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %81
  %93 = load i8*, i8** %6, align 8
  %94 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %95 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %92, %81
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 0, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  %102 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %103 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %104 = load i32, i32* @SMU7_Firmware_Header, align 4
  %105 = load i32, i32* @mcArbDramTimingTable, align 4
  %106 = call i64 @offsetof(i32 %104, i32 %105)
  %107 = add nsw i64 %103, %106
  %108 = load i32, i32* @SMC_RAM_END, align 4
  %109 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %102, i64 %107, i8** %6, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = icmp eq i32 0, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %96
  %113 = load i8*, i8** %6, align 8
  %114 = load %struct.ci_smumgr*, %struct.ci_smumgr** %5, align 8
  %115 = getelementptr inbounds %struct.ci_smumgr, %struct.ci_smumgr* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %112, %96
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 0, %117
  %119 = zext i1 %118 to i32
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %123 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %124 = load i32, i32* @SMU7_Firmware_Header, align 4
  %125 = load i32, i32* @Version, align 4
  %126 = call i64 @offsetof(i32 %124, i32 %125)
  %127 = add nsw i64 %123, %126
  %128 = load i32, i32* @SMC_RAM_END, align 4
  %129 = call i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr* %122, i64 %127, i8** %6, i32 %128)
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = icmp eq i32 0, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %116
  %133 = load i8*, i8** %6, align 8
  %134 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %3, align 8
  %135 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  store i8* %133, i8** %136, align 8
  br label %137

137:                                              ; preds = %132, %116
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 0, %138
  %140 = zext i1 %139 to i32
  %141 = load i32, i32* %8, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %137, %20
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i64 @ci_upload_firmware(%struct.pp_hwmgr*) #1

declare dso_local i32 @ci_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i8**, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
