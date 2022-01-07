; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@fw_fabric_serdes_load = common dso_local global i64 0, align 8
@CR_SBUS = common dso_local global i32 0, align 4
@SBUS_TIMEOUT = common dso_local global i32 0, align 4
@all_fabric_serdes_broadcast = common dso_local global i32 0, align 4
@fabric_serdes_broadcast = common dso_local global i32* null, align 8
@fabric_serdes_addrs = common dso_local global i32* null, align 8
@NUM_FABRIC_SERDES = common dso_local global i32 0, align 4
@SPICO_FABRIC = common dso_local global i32 0, align 4
@fw_fabric = common dso_local global i32 0, align 4
@fw_8051_load = common dso_local global i64 0, align 8
@fw_8051 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @load_firmware(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  %5 = load i64, i64* @fw_fabric_serdes_load, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %57

7:                                                ; preds = %1
  %8 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %9 = load i32, i32* @CR_SBUS, align 4
  %10 = load i32, i32* @SBUS_TIMEOUT, align 4
  %11 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %8, i32 %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %7
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %7
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %18 = call i32 @set_sbus_fast_mode(%struct.hfi1_devdata* %17)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %20 = load i32, i32* @all_fabric_serdes_broadcast, align 4
  %21 = load i32*, i32** @fabric_serdes_broadcast, align 8
  %22 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %23 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** @fabric_serdes_addrs, align 8
  %28 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NUM_FABRIC_SERDES, align 4
  %34 = call i32 @set_serdes_broadcast(%struct.hfi1_devdata* %19, i32 %20, i32 %26, i32 %32, i32 %33)
  %35 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %36 = load i32, i32* @SPICO_FABRIC, align 4
  %37 = call i32 @turn_off_spicos(%struct.hfi1_devdata* %35, i32 %36)
  br label %38

38:                                               ; preds = %41, %16
  %39 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %40 = call i32 @load_fabric_serdes_firmware(%struct.hfi1_devdata* %39, i32* @fw_fabric)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %38
  %42 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i64 @retry_firmware(%struct.hfi1_devdata* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %38, label %46

46:                                               ; preds = %41
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = call i32 @clear_sbus_fast_mode(%struct.hfi1_devdata* %47)
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %50 = load i32, i32* @CR_SBUS, align 4
  %51 = call i32 @release_chip_resource(%struct.hfi1_devdata* %49, i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %46
  br label %57

57:                                               ; preds = %56, %1
  %58 = load i64, i64* @fw_8051_load, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %64, %60
  %62 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %63 = call i32 @load_8051_firmware(%struct.hfi1_devdata* %62, i32* @fw_8051)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %61
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i64 @retry_firmware(%struct.hfi1_devdata* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %61, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %78

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %77 = call i32 @dump_fw_version(%struct.hfi1_devdata* %76)
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %75, %72, %54, %14
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @set_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i32 @set_serdes_broadcast(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @turn_off_spicos(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @load_fabric_serdes_firmware(%struct.hfi1_devdata*, i32*) #1

declare dso_local i64 @retry_firmware(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @clear_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @load_8051_firmware(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @dump_fw_version(%struct.hfi1_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
