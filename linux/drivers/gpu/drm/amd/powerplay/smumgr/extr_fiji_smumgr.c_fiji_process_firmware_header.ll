; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_fiji_smumgr.c_fiji_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i8* }
%struct.smu7_hwmgr = type { i8* }
%struct.fiji_smumgr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8*, i8* }

@SMU7_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU73_Firmware_Header = common dso_local global i32 0, align 4
@DpmTable = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@mcRegisterTable = common dso_local global i32 0, align 4
@FanTable = common dso_local global i32 0, align 4
@mcArbDramTimingTable = common dso_local global i32 0, align 4
@Version = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @fiji_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiji_process_firmware_header(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.fiji_smumgr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pp_hwmgr* %0, %struct.pp_hwmgr** %2, align 8
  %8 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %9 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.smu7_hwmgr*
  store %struct.smu7_hwmgr* %11, %struct.smu7_hwmgr** %3, align 8
  %12 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %13 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.fiji_smumgr*
  store %struct.fiji_smumgr* %15, %struct.fiji_smumgr** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %18 = load i32, i32* @SMU73_Firmware_Header, align 4
  %19 = load i32, i32* @DpmTable, align 4
  %20 = call i64 @offsetof(i32 %18, i32 %19)
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* @SMC_RAM_END, align 4
  %23 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %16, i64 %21, i8** %5, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %29 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  store i8* %27, i8** %30, align 8
  br label %31

31:                                               ; preds = %26, %1
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 0, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* %7, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %38 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %39 = load i32, i32* @SMU73_Firmware_Header, align 4
  %40 = load i32, i32* @SoftRegisters, align 4
  %41 = call i64 @offsetof(i32 %39, i32 %40)
  %42 = add nsw i64 %38, %41
  %43 = load i32, i32* @SMC_RAM_END, align 4
  %44 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %37, i64 %42, i8** %5, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %31
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %50 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %53 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i8* %51, i8** %54, align 8
  br label %55

55:                                               ; preds = %47, %31
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 0, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %7, align 4
  %61 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %62 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %63 = load i32, i32* @SMU73_Firmware_Header, align 4
  %64 = load i32, i32* @mcRegisterTable, align 4
  %65 = call i64 @offsetof(i32 %63, i32 %64)
  %66 = add nsw i64 %62, %65
  %67 = load i32, i32* @SMC_RAM_END, align 4
  %68 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %61, i64 %66, i8** %5, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %55
  %72 = load i8*, i8** %5, align 8
  %73 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %74 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 2
  store i8* %72, i8** %75, align 8
  br label %76

76:                                               ; preds = %71, %55
  %77 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %78 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %79 = load i32, i32* @SMU73_Firmware_Header, align 4
  %80 = load i32, i32* @FanTable, align 4
  %81 = call i64 @offsetof(i32 %79, i32 %80)
  %82 = add nsw i64 %78, %81
  %83 = load i32, i32* @SMC_RAM_END, align 4
  %84 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %77, i64 %82, i8** %5, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %90 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %76
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 0, %93
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %7, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %7, align 4
  %98 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %99 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %100 = load i32, i32* @SMU73_Firmware_Header, align 4
  %101 = load i32, i32* @mcArbDramTimingTable, align 4
  %102 = call i64 @offsetof(i32 %100, i32 %101)
  %103 = add nsw i64 %99, %102
  %104 = load i32, i32* @SMC_RAM_END, align 4
  %105 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %98, i64 %103, i8** %5, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %113, label %108

108:                                              ; preds = %92
  %109 = load i8*, i8** %5, align 8
  %110 = load %struct.fiji_smumgr*, %struct.fiji_smumgr** %4, align 8
  %111 = getelementptr inbounds %struct.fiji_smumgr, %struct.fiji_smumgr* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  store i8* %109, i8** %112, align 8
  br label %113

113:                                              ; preds = %108, %92
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 0, %114
  %116 = zext i1 %115 to i32
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %7, align 4
  %119 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %120 = load i64, i64* @SMU7_FIRMWARE_HEADER_LOCATION, align 8
  %121 = load i32, i32* @SMU73_Firmware_Header, align 4
  %122 = load i32, i32* @Version, align 4
  %123 = call i64 @offsetof(i32 %121, i32 %122)
  %124 = add nsw i64 %120, %123
  %125 = load i32, i32* @SMC_RAM_END, align 4
  %126 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %119, i64 %124, i8** %5, i32 %125)
  store i32 %126, i32* %6, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %113
  %130 = load i8*, i8** %5, align 8
  %131 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %132 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %129, %113
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 0, %135
  %137 = zext i1 %136 to i32
  %138 = load i32, i32* %7, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 -1, i32 0
  ret i32 %143
}

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i8**, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
