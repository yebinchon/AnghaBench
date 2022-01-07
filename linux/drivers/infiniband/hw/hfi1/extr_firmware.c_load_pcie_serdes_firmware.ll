; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_pcie_serdes_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_pcie_serdes_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.firmware_details = type { i32, i32, i32* }

@SBUS_MASTER_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Downloading PCIe firmware\0A\00", align 1
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"PCIe serdes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.firmware_details*)* @load_pcie_serdes_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_pcie_serdes_firmware(%struct.hfi1_devdata* %0, %struct.firmware_details* %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca %struct.firmware_details*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store %struct.firmware_details* %1, %struct.firmware_details** %4, align 8
  %7 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = call i32 @dd_dev_info(%struct.hfi1_devdata* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load %struct.firmware_details*, %struct.firmware_details** %4, align 8
  %12 = call i32 @load_security_variables(%struct.hfi1_devdata* %10, %struct.firmware_details* %11)
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %16 = call i32 @sbus_request(%struct.hfi1_devdata* %13, i32 %14, i32 5, i32 %15, i32 1)
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %20 = call i32 @sbus_request(%struct.hfi1_devdata* %17, i32 %18, i32 1, i32 %19, i32 3392)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %39, %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.firmware_details*, %struct.firmware_details** %4, align 8
  %24 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %31 = load %struct.firmware_details*, %struct.firmware_details** %4, align 8
  %32 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sbus_request(%struct.hfi1_devdata* %28, i32 %29, i32 4, i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %5, align 4
  br label %21

42:                                               ; preds = %21
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %46 = call i32 @sbus_request(%struct.hfi1_devdata* %43, i32 %44, i32 1, i32 %45, i32 320)
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %50 = call i32 @sbus_request(%struct.hfi1_devdata* %47, i32 %48, i32 5, i32 %49, i32 0)
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %52 = load %struct.firmware_details*, %struct.firmware_details** %4, align 8
  %53 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @run_rsa(%struct.hfi1_devdata* %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  ret i32 %55
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @load_security_variables(%struct.hfi1_devdata*, %struct.firmware_details*) #1

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @run_rsa(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
