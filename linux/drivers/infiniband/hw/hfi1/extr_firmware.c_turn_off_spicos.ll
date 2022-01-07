; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_turn_off_spicos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_turn_off_spicos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Turning off spicos:%s%s\0A\00", align 1
@SPICO_SBUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" SBus\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SPICO_FABRIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c" fabric\00", align 1
@MISC_CFG_FW_CTRL = common dso_local global i32 0, align 4
@ENABLE_SPICO_SMASK = common dso_local global i32 0, align 4
@SBUS_MASTER_BROADCAST = common dso_local global i32 0, align 4
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@fabric_serdes_broadcast = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_devdata*, i32)* @turn_off_spicos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turn_off_spicos(%struct.hfi1_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = call i32 @is_ax(%struct.hfi1_devdata* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %56

9:                                                ; preds = %2
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @SPICO_SBUS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SPICO_FABRIC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %23 = call i32 @dd_dev_info(%struct.hfi1_devdata* %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %16, i8* %22)
  %24 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %25 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %26 = load i32, i32* @ENABLE_SPICO_SMASK, align 4
  %27 = call i32 @write_csr(%struct.hfi1_devdata* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SPICO_SBUS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %9
  %33 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %34 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  %35 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %36 = call i32 @sbus_request(%struct.hfi1_devdata* %33, i32 %34, i32 1, i32 %35, i32 64)
  br label %37

37:                                               ; preds = %32, %9
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @SPICO_FABRIC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32*, i32** @fabric_serdes_broadcast, align 8
  %45 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %51 = call i32 @sbus_request(%struct.hfi1_devdata* %43, i32 %49, i32 7, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %42, %37
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %54 = load i32, i32* @MISC_CFG_FW_CTRL, align 4
  %55 = call i32 @write_csr(%struct.hfi1_devdata* %53, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %52, %8
  ret void
}

declare dso_local i32 @is_ax(%struct.hfi1_devdata*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*, i8*, i8*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
