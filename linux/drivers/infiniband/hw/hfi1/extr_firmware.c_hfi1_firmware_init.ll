; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_hfi1_firmware_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_hfi1_firmware_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_RTL_SILICON = common dso_local global i64 0, align 8
@fw_fabric_serdes_load = common dso_local global i64 0, align 8
@fw_pcie_serdes_load = common dso_local global i64 0, align 8
@fw_sbus_load = common dso_local global i64 0, align 8
@ICODE_FUNCTIONAL_SIMULATOR = common dso_local global i64 0, align 8
@fw_8051_load = common dso_local global i64 0, align 8
@fw_8051_name = common dso_local global i64 0, align 8
@DEFAULT_FW_8051_NAME_ASIC = common dso_local global i64 0, align 8
@DEFAULT_FW_8051_NAME_FPGA = common dso_local global i64 0, align 8
@fw_fabric_serdes_name = common dso_local global i64 0, align 8
@DEFAULT_FW_FABRIC_NAME = common dso_local global i64 0, align 8
@fw_sbus_name = common dso_local global i64 0, align 8
@DEFAULT_FW_SBUS_NAME = common dso_local global i64 0, align 8
@fw_pcie_serdes_name = common dso_local global i64 0, align 8
@DEFAULT_FW_PCIE_NAME = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hfi1_firmware_init(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %3 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %4 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ICODE_RTL_SILICON, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* @fw_fabric_serdes_load, align 8
  store i64 0, i64* @fw_pcie_serdes_load, align 8
  store i64 0, i64* @fw_sbus_load, align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @ICODE_FUNCTIONAL_SIMULATOR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i64 0, i64* @fw_8051_load, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i64, i64* @fw_8051_name, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %16
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %21 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ICODE_RTL_SILICON, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i64, i64* @DEFAULT_FW_8051_NAME_ASIC, align 8
  store i64 %26, i64* @fw_8051_name, align 8
  br label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @DEFAULT_FW_8051_NAME_FPGA, align 8
  store i64 %28, i64* @fw_8051_name, align 8
  br label %29

29:                                               ; preds = %27, %25
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i64, i64* @fw_fabric_serdes_name, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* @DEFAULT_FW_FABRIC_NAME, align 8
  store i64 %34, i64* @fw_fabric_serdes_name, align 8
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i64, i64* @fw_sbus_name, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i64, i64* @DEFAULT_FW_SBUS_NAME, align 8
  store i64 %39, i64* @fw_sbus_name, align 8
  br label %40

40:                                               ; preds = %38, %35
  %41 = load i64, i64* @fw_pcie_serdes_name, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = load i64, i64* @DEFAULT_FW_PCIE_NAME, align 8
  store i64 %44, i64* @fw_pcie_serdes_name, align 8
  br label %45

45:                                               ; preds = %43, %40
  %46 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %47 = call i32 @obtain_firmware(%struct.hfi1_devdata* %46)
  ret i32 %47
}

declare dso_local i32 @obtain_firmware(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
