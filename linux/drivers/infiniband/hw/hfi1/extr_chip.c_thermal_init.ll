; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_thermal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_chip.c_thermal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }

@ICODE_RTL_SILICON = common dso_local global i64 0, align 8
@CR_THERM_INIT = common dso_local global i32 0, align 4
@CR_SBUS = common dso_local global i32 0, align 4
@SBUS_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Acquire SBus\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Initializing thermal sensor\0A\00", align 1
@ASIC_CFG_THERM_POLL_EN = common dso_local global i32 0, align 4
@SBUS_THERMAL = common dso_local global i32 0, align 4
@RESET_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Bus Reset\00", align 1
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Therm Block Reset\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Write Clock Div\00", align 1
@SBUS_THERM_MONITOR_MODE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Write Mode Sel\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Write Reset Deassert\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Unable to set thermal init flag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*)* @thermal_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_init(%struct.hfi1_devdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_devdata*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %6 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ICODE_RTL_SILICON, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %12 = load i32, i32* @CR_THERM_INIT, align 4
  %13 = call i64 @check_chip_resource(%struct.hfi1_devdata* %11, i32 %12, i32* null)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %111

17:                                               ; preds = %10
  %18 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %19 = load i32, i32* @CR_SBUS, align 4
  %20 = load i32, i32* @SBUS_TIMEOUT, align 4
  %21 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %18, i32 %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %111

29:                                               ; preds = %17
  %30 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %31 = call i32 @dd_dev_info(%struct.hfi1_devdata* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %33 = load i32, i32* @ASIC_CFG_THERM_POLL_EN, align 4
  %34 = call i32 @write_csr(%struct.hfi1_devdata* %32, i32 %33, i32 0)
  %35 = call i32 @msleep(i32 100)
  %36 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %37 = load i32, i32* @SBUS_THERMAL, align 4
  %38 = load i32, i32* @RESET_SBUS_RECEIVER, align 4
  %39 = call i32 @sbus_request_slow(%struct.hfi1_devdata* %36, i32 %37, i32 0, i32 %38, i32 0)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %43, i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %106

46:                                               ; preds = %29
  %47 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %48 = load i32, i32* @SBUS_THERMAL, align 4
  %49 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %50 = call i32 @sbus_request_slow(%struct.hfi1_devdata* %47, i32 %48, i32 0, i32 %49, i32 1)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %106

57:                                               ; preds = %46
  %58 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %59 = load i32, i32* @SBUS_THERMAL, align 4
  %60 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %61 = call i32 @sbus_request_slow(%struct.hfi1_devdata* %58, i32 %59, i32 1, i32 %60, i32 50)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %65, i32 %66, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %106

68:                                               ; preds = %57
  %69 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %70 = load i32, i32* @SBUS_THERMAL, align 4
  %71 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %72 = load i32, i32* @SBUS_THERM_MONITOR_MODE, align 4
  %73 = call i32 @sbus_request_slow(%struct.hfi1_devdata* %69, i32 %70, i32 3, i32 %71, i32 %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %77, i32 %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %106

80:                                               ; preds = %68
  %81 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %82 = load i32, i32* @SBUS_THERMAL, align 4
  %83 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %84 = call i32 @sbus_request_slow(%struct.hfi1_devdata* %81, i32 %82, i32 0, i32 %83, i32 2)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %88, i32 %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %106

91:                                               ; preds = %80
  %92 = call i32 @msleep(i32 22)
  %93 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %94 = load i32, i32* @ASIC_CFG_THERM_POLL_EN, align 4
  %95 = call i32 @write_csr(%struct.hfi1_devdata* %93, i32 %94, i32 1)
  %96 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %97 = load i32, i32* @CR_THERM_INIT, align 4
  %98 = call i32 @acquire_chip_resource(%struct.hfi1_devdata* %96, i32 %97, i32 0)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @THERM_FAILURE(%struct.hfi1_devdata* %102, i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %101, %91
  br label %106

106:                                              ; preds = %105, %87, %76, %64, %53, %42
  %107 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %3, align 8
  %108 = load i32, i32* @CR_SBUS, align 4
  %109 = call i32 @release_chip_resource(%struct.hfi1_devdata* %107, i32 %108)
  %110 = load i32, i32* %4, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %24, %15
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @check_chip_resource(%struct.hfi1_devdata*, i32, i32*) #1

declare dso_local i32 @acquire_chip_resource(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @THERM_FAILURE(%struct.hfi1_devdata*, i32, i8*) #1

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @write_csr(%struct.hfi1_devdata*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sbus_request_slow(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @release_chip_resource(%struct.hfi1_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
