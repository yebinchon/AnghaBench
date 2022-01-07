; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_fabric_serdes_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_fabric_serdes_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i64 }
%struct.firmware_details = type { i32, i32, i32* }

@fabric_serdes_broadcast = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Downloading fabric firmware\0A\00", align 1
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fabric serdes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.firmware_details*)* @load_fabric_serdes_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_fabric_serdes_firmware(%struct.hfi1_devdata* %0, %struct.firmware_details* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.firmware_details*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.firmware_details* %1, %struct.firmware_details** %5, align 8
  %9 = load i32*, i32** @fabric_serdes_broadcast, align 8
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %11 = getelementptr inbounds %struct.hfi1_devdata, %struct.hfi1_devdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = call i32 @dd_dev_info(%struct.hfi1_devdata* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %18 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %19 = call i32 @load_security_variables(%struct.hfi1_devdata* %17, %struct.firmware_details* %18)
  %20 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %23 = call i32 @sbus_request(%struct.hfi1_devdata* %20, i32 %21, i32 7, i32 %22, i32 17)
  %24 = call i32 @udelay(i32 1)
  %25 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %28 = call i32 @sbus_request(%struct.hfi1_devdata* %25, i32 %26, i32 7, i32 %27, i32 16)
  %29 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %32 = call i32 @sbus_request(%struct.hfi1_devdata* %29, i32 %30, i32 0, i32 %31, i32 1073741824)
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %51, %2
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %36 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %33
  %40 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %43 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %44 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sbus_request(%struct.hfi1_devdata* %40, i32 %41, i32 10, i32 %42, i32 %49)
  br label %51

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %6, align 4
  br label %33

54:                                               ; preds = %33
  %55 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %58 = call i32 @sbus_request(%struct.hfi1_devdata* %55, i32 %56, i32 0, i32 %57, i32 0)
  %59 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %62 = call i32 @sbus_request(%struct.hfi1_devdata* %59, i32 %60, i32 11, i32 %61, i32 786432)
  %63 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %64 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %65 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @run_rsa(%struct.hfi1_devdata* %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %54
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %81

72:                                               ; preds = %54
  %73 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %76 = call i32 @sbus_request(%struct.hfi1_devdata* %73, i32 %74, i32 7, i32 %75, i32 2)
  %77 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %80 = call i32 @sbus_request(%struct.hfi1_devdata* %77, i32 %78, i32 8, i32 %79, i32 0)
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %72, %70
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @dd_dev_info(%struct.hfi1_devdata*, i8*) #1

declare dso_local i32 @load_security_variables(%struct.hfi1_devdata*, %struct.firmware_details*) #1

declare dso_local i32 @sbus_request(%struct.hfi1_devdata*, i32, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @run_rsa(%struct.hfi1_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
