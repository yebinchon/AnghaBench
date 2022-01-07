; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_8051_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_8051_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.firmware_details = type { i32, i32, i32 }

@DC_DC8051_CFG_RST_M8051W_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RST_CRAM_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RST_DRAM_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RST_IRAM_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RST_SFR_SMASK = common dso_local global i64 0, align 8
@DC_DC8051_CFG_RST = common dso_local global i32 0, align 4
@MISC_CFG_FW_CTRL = common dso_local global i32 0, align 4
@MISC_CFG_FW_CTRL_FW_8051_LOADED_SMASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"8051\00", align 1
@TIMEOUT_8051_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"8051 start timeout, current state 0x%x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"8051 firmware version %d.%d.%d\0A\00", align 1
@HOST_INTERFACE_VERSION = common dso_local global i32 0, align 4
@HCMD_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to set host interface version, return 0x%x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.firmware_details*)* @load_8051_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_8051_firmware(%struct.hfi1_devdata* %0, %struct.firmware_details* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.firmware_details*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.firmware_details* %1, %struct.firmware_details** %5, align 8
  %11 = load i64, i64* @DC_DC8051_CFG_RST_M8051W_SMASK, align 8
  %12 = load i64, i64* @DC_DC8051_CFG_RST_CRAM_SMASK, align 8
  %13 = or i64 %11, %12
  %14 = load i64, i64* @DC_DC8051_CFG_RST_DRAM_SMASK, align 8
  %15 = or i64 %13, %14
  %16 = load i64, i64* @DC_DC8051_CFG_RST_IRAM_SMASK, align 8
  %17 = or i64 %15, %16
  %18 = load i64, i64* @DC_DC8051_CFG_RST_SFR_SMASK, align 8
  %19 = or i64 %17, %18
  store i64 %19, i64* %6, align 8
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %21 = load i32, i32* @DC_DC8051_CFG_RST, align 4
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @write_csr(%struct.hfi1_devdata* %20, i32 %21, i64 %22)
  %24 = load i64, i64* @DC_DC8051_CFG_RST_M8051W_SMASK, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %26 = load i32, i32* @DC_DC8051_CFG_RST, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @write_csr(%struct.hfi1_devdata* %25, i32 %26, i64 %27)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %31 = call i32 @load_security_variables(%struct.hfi1_devdata* %29, %struct.firmware_details* %30)
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %33 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %32, i32 %33, i64 0)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %36 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %37 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %40 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @write_8051(%struct.hfi1_devdata* %35, i32 1, i32 0, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %2
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %107

47:                                               ; preds = %2
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %49 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %50 = load i64, i64* @MISC_CFG_FW_CTRL_FW_8051_LOADED_SMASK, align 8
  %51 = call i32 @write_csr(%struct.hfi1_devdata* %48, i32 %49, i64 %50)
  %52 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %53 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %54 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @run_rsa(%struct.hfi1_devdata* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %107

61:                                               ; preds = %47
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %63 = load i32, i32* @DC_DC8051_CFG_RST, align 4
  %64 = call i32 @write_csr(%struct.hfi1_devdata* %62, i32 %63, i64 0)
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %66 = load i32, i32* @TIMEOUT_8051_START, align 4
  %67 = call i32 @wait_fm_ready(%struct.hfi1_devdata* %65, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %61
  %71 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %72 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %73 = call i32 @get_firmware_state(%struct.hfi1_devdata* %72)
  %74 = call i32 @dd_dev_err(%struct.hfi1_devdata* %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ETIMEDOUT, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %107

77:                                               ; preds = %61
  %78 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %79 = call i32 @read_misc_status(%struct.hfi1_devdata* %78, i64* %8, i64* %9, i64* %10)
  %80 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = trunc i64 %81 to i32
  %83 = load i64, i64* %9, align 8
  %84 = trunc i64 %83 to i32
  %85 = load i64, i64* %10, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i32 @dd_dev_info(%struct.hfi1_devdata* %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %84, i32 %86)
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @dc8051_ver(i64 %88, i64 %89, i64 %90)
  %92 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %93 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %95 = load i32, i32* @HOST_INTERFACE_VERSION, align 4
  %96 = call i32 @write_host_interface_version(%struct.hfi1_devdata* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @HCMD_SUCCESS, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %77
  %101 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @dd_dev_err(%struct.hfi1_devdata* %101, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %3, align 4
  br label %107

106:                                              ; preds = %77
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %106, %100, %70, %59, %45
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i64) #1

declare dso_local i32 @load_security_variables(%struct.hfi1_devdata*, %struct.firmware_details*) #1

declare dso_local i32 @write_8051(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @run_rsa(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @wait_fm_ready(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*, i32) #1

declare dso_local i32 @get_firmware_state(%struct.hfi1_devdata*) #1

declare dso_local i32 @read_misc_status(%struct.hfi1_devdata*, i64*, i64*, i64*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i32, i32, i32) #1

declare dso_local i32 @dc8051_ver(i64, i64, i64) #1

declare dso_local i32 @write_host_interface_version(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
