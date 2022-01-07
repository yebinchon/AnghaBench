; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_fabric_serdes_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_fabric_serdes_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@fw_fabric_serdes_load = common dso_local global i32 0, align 4
@CR_SBUS = common dso_local global i32 0, align 4
@SBUS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Cannot acquire SBus resource to reset fabric SerDes - perhaps you should reboot\0A\00", align 1
@fabric_serdes_broadcast = common dso_local global i32* null, align 8
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@SPICO_FABRIC = common dso_local global i32 0, align 4
@fw_fabric = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fabric_serdes_reset(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca %struct.hfi1_devdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %2, align 8
  %5 = load i32, i32* @fw_fabric_serdes_load, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %56

8:                                                ; preds = %1
  %9 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %10 = load i32, i32* @CR_SBUS, align 4
  %11 = load i32, i32* @SBUS_TIMEOUT, align 4
  %12 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %9, i32 %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %17 = call i32 @dd_dev_err(%struct.hfi1_devdata* %16, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
  br label %56

18:                                               ; preds = %8
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %20 = call i32 @set_sbus_fast_mode(%struct.hfi1_devdata* %19)
  %21 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %22 = call i64 @is_ax(%struct.hfi1_devdata* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load i32*, i32** @fabric_serdes_broadcast, align 8
  %26 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %34 = call i32 @sbus_request(%struct.hfi1_devdata* %31, i32 %32, i32 7, i32 %33, i32 17)
  %35 = call i32 @udelay(i32 1)
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %39 = call i32 @sbus_request(%struct.hfi1_devdata* %36, i32 %37, i32 7, i32 %38, i32 16)
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %43 = call i32 @sbus_request(%struct.hfi1_devdata* %40, i32 %41, i32 7, i32 %42, i32 2)
  br label %50

44:                                               ; preds = %18
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %46 = load i32, i32* @SPICO_FABRIC, align 4
  %47 = call i32 @turn_off_spicos(%struct.hfi1_devdata* %45, i32 %46)
  %48 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %49 = call i32 @load_fabric_serdes_firmware(%struct.hfi1_devdata* %48, i32* @fw_fabric)
  br label %50

50:                                               ; preds = %44, %24
  %51 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %52 = call i32 @clear_sbus_fast_mode(%struct.hfi1_devdata* %51)
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %2, align 8
  %54 = load i32, i32* @CR_SBUS, align 4
  %55 = call i32 @release_chip_resource(%struct.hfi1_devdata* %53, i32 %54)
  br label %56

56:                                               ; preds = %50, %15, %7
  ret void
}

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @dd_dev_err(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @set_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i64 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @turn_off_spicos(%struct.hfi1_devdata*, i32) #1

declare dso_local i32 @load_fabric_serdes_firmware(%struct.hfi1_devdata*, i32*) #1

declare dso_local i32 @clear_sbus_fast_mode(%struct.hfi1_devdata*) #1

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
