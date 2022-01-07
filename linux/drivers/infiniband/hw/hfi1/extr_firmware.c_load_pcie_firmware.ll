; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_pcie_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_pcie_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@fw_sbus_load = common dso_local global i64 0, align 8
@SPICO_SBUS = common dso_local global i32 0, align 4
@fw_sbus = common dso_local global i32 0, align 4
@fw_pcie_serdes_load = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Setting PCIe SerDes broadcast\0A\00", align 1
@all_pcie_serdes_broadcast = common dso_local global i32 0, align 4
@pcie_serdes_broadcast = common dso_local global i32* null, align 8
@pcie_serdes_addrs = common dso_local global i32* null, align 8
@NUM_PCIE_SERDES = common dso_local global i32 0, align 4
@fw_pcie = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_pcie_firmware(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %5 = call i32 @set_sbus_fast_mode(%struct.hfi1_devdata* %4)
  %6 = load i64, i64* @fw_sbus_load, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = load i32, i32* @SPICO_SBUS, align 4
  %11 = call i32 @turn_off_spicos(%struct.hfi1_devdata* %9, i32 %10)
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %14 = call i32 @load_sbus_firmware(%struct.hfi1_devdata* %13, i32* @fw_sbus)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @retry_firmware(%struct.hfi1_devdata* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %12, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %61

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i64, i64* @fw_pcie_serdes_load, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %25
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %30 = call i32 @dd_dev_info(%struct.hfi1_devdata* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = load i32, i32* @all_pcie_serdes_broadcast, align 4
  %33 = load i32*, i32** @pcie_serdes_broadcast, align 8
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %35 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** @pcie_serdes_addrs, align 8
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NUM_PCIE_SERDES, align 4
  %46 = call i32 @set_serdes_broadcast(%struct.hfi1_devdata* %31, i32 %32, i32 %38, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %50, %28
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %49 = call i32 @load_pcie_serdes_firmware(%struct.hfi1_devdata* %48, i32* @fw_pcie)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %47
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i64 @retry_firmware(%struct.hfi1_devdata* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %47, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %61

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %60, %58, %23
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %63 = call i32 @clear_sbus_fast_mode(%struct.hfi1_devdata* %62)
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @set_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i32 @turn_off_spicos(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @load_sbus_firmware(%struct.hfi1_devdata*, i32*) #1

declare dso_local i64 @retry_firmware(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @set_serdes_broadcast(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @load_pcie_serdes_firmware(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @clear_sbus_fast_mode(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
