; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_process_firmware_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/powerplay/smumgr/extr_iceland_smumgr.c_iceland_process_firmware_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_hwmgr = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i8* }
%struct.smu7_hwmgr = type { i8* }
%struct.smu7_smumgr = type { i8*, i8*, i8*, i8*, i8*, i8* }

@SMU71_FIRMWARE_HEADER_LOCATION = common dso_local global i64 0, align 8
@SMU71_Firmware_Header = common dso_local global i32 0, align 4
@DpmTable = common dso_local global i32 0, align 4
@SMC_RAM_END = common dso_local global i32 0, align 4
@SoftRegisters = common dso_local global i32 0, align 4
@mcRegisterTable = common dso_local global i32 0, align 4
@FanTable = common dso_local global i32 0, align 4
@mcArbDramTimingTable = common dso_local global i32 0, align 4
@Version = common dso_local global i32 0, align 4
@UlvSettings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_hwmgr*)* @iceland_process_firmware_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iceland_process_firmware_header(%struct.pp_hwmgr* %0) #0 {
  %2 = alloca %struct.pp_hwmgr*, align 8
  %3 = alloca %struct.smu7_hwmgr*, align 8
  %4 = alloca %struct.smu7_smumgr*, align 8
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
  %15 = inttoptr i64 %14 to %struct.smu7_smumgr*
  store %struct.smu7_smumgr* %15, %struct.smu7_smumgr** %4, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %17 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %18 = load i32, i32* @SMU71_Firmware_Header, align 4
  %19 = load i32, i32* @DpmTable, align 4
  %20 = call i64 @offsetof(i32 %18, i32 %19)
  %21 = add nsw i64 %17, %20
  %22 = load i32, i32* @SMC_RAM_END, align 4
  %23 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %16, i64 %21, i8** %5, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 0, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %29 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %28, i32 0, i32 5
  store i8* %27, i8** %29, align 8
  br label %30

30:                                               ; preds = %26, %1
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 0, %31
  %33 = zext i1 %32 to i32
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %37 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %38 = load i32, i32* @SMU71_Firmware_Header, align 4
  %39 = load i32, i32* @SoftRegisters, align 4
  %40 = call i64 @offsetof(i32 %38, i32 %39)
  %41 = add nsw i64 %37, %40
  %42 = load i32, i32* @SMC_RAM_END, align 4
  %43 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %36, i64 %41, i8** %5, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 0, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %30
  %47 = load i8*, i8** %5, align 8
  %48 = load %struct.smu7_hwmgr*, %struct.smu7_hwmgr** %3, align 8
  %49 = getelementptr inbounds %struct.smu7_hwmgr, %struct.smu7_hwmgr* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %52 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %51, i32 0, i32 4
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %46, %30
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 0, %54
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %60 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %61 = load i32, i32* @SMU71_Firmware_Header, align 4
  %62 = load i32, i32* @mcRegisterTable, align 4
  %63 = call i64 @offsetof(i32 %61, i32 %62)
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* @SMC_RAM_END, align 4
  %66 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %59, i64 %64, i8** %5, i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 0, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %53
  %70 = load i8*, i8** %5, align 8
  %71 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %72 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %69, %53
  %74 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %75 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %76 = load i32, i32* @SMU71_Firmware_Header, align 4
  %77 = load i32, i32* @FanTable, align 4
  %78 = call i64 @offsetof(i32 %76, i32 %77)
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* @SMC_RAM_END, align 4
  %81 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %74, i64 %79, i8** %5, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 0, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %73
  %85 = load i8*, i8** %5, align 8
  %86 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %87 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %84, %73
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 0, %89
  %91 = zext i1 %90 to i32
  %92 = load i32, i32* %7, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %7, align 4
  %94 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %95 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %96 = load i32, i32* @SMU71_Firmware_Header, align 4
  %97 = load i32, i32* @mcArbDramTimingTable, align 4
  %98 = call i64 @offsetof(i32 %96, i32 %97)
  %99 = add nsw i64 %95, %98
  %100 = load i32, i32* @SMC_RAM_END, align 4
  %101 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %94, i64 %99, i8** %5, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 0, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %88
  %105 = load i8*, i8** %5, align 8
  %106 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %107 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %106, i32 0, i32 1
  store i8* %105, i8** %107, align 8
  br label %108

108:                                              ; preds = %104, %88
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 0, %109
  %111 = zext i1 %110 to i32
  %112 = load i32, i32* %7, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %115 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %116 = load i32, i32* @SMU71_Firmware_Header, align 4
  %117 = load i32, i32* @Version, align 4
  %118 = call i64 @offsetof(i32 %116, i32 %117)
  %119 = add nsw i64 %115, %118
  %120 = load i32, i32* @SMC_RAM_END, align 4
  %121 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %114, i64 %119, i8** %5, i32 %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp eq i32 0, %122
  br i1 %123, label %124, label %129

124:                                              ; preds = %108
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %127 = getelementptr inbounds %struct.pp_hwmgr, %struct.pp_hwmgr* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  store i8* %125, i8** %128, align 8
  br label %129

129:                                              ; preds = %124, %108
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 0, %130
  %132 = zext i1 %131 to i32
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %7, align 4
  %135 = load %struct.pp_hwmgr*, %struct.pp_hwmgr** %2, align 8
  %136 = load i64, i64* @SMU71_FIRMWARE_HEADER_LOCATION, align 8
  %137 = load i32, i32* @SMU71_Firmware_Header, align 4
  %138 = load i32, i32* @UlvSettings, align 4
  %139 = call i64 @offsetof(i32 %137, i32 %138)
  %140 = add nsw i64 %136, %139
  %141 = load i32, i32* @SMC_RAM_END, align 4
  %142 = call i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr* %135, i64 %140, i8** %5, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 0, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %129
  %146 = load i8*, i8** %5, align 8
  %147 = load %struct.smu7_smumgr*, %struct.smu7_smumgr** %4, align 8
  %148 = getelementptr inbounds %struct.smu7_smumgr, %struct.smu7_smumgr* %147, i32 0, i32 0
  store i8* %146, i8** %148, align 8
  br label %149

149:                                              ; preds = %145, %129
  %150 = load i32, i32* %6, align 4
  %151 = icmp ne i32 0, %150
  %152 = zext i1 %151 to i32
  %153 = load i32, i32* %7, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 1, i32 0
  ret i32 %158
}

declare dso_local i32 @smu7_read_smc_sram_dword(%struct.pp_hwmgr*, i64, i8**, i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
