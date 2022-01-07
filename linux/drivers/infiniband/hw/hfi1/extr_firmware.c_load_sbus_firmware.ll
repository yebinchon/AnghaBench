; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_sbus_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_firmware.c_load_sbus_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_devdata = type { i32 }
%struct.firmware_details = type { i32, i32, i32* }

@SBUS_MASTER_BROADCAST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Downloading SBus firmware\0A\00", align 1
@WRITE_SBUS_RECEIVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"SBus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_devdata*, %struct.firmware_details*)* @load_sbus_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_sbus_firmware(%struct.hfi1_devdata* %0, %struct.firmware_details* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hfi1_devdata*, align 8
  %5 = alloca %struct.firmware_details*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hfi1_devdata* %0, %struct.hfi1_devdata** %4, align 8
  store %struct.firmware_details* %1, %struct.firmware_details** %5, align 8
  %9 = load i32, i32* @SBUS_MASTER_BROADCAST, align 4
  store i32 %9, i32* %8, align 4
  %10 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %11 = call i32 @dd_dev_info(%struct.hfi1_devdata* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %13 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %14 = call i32 @load_security_variables(%struct.hfi1_devdata* %12, %struct.firmware_details* %13)
  %15 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %18 = call i32 @sbus_request(%struct.hfi1_devdata* %15, i32 %16, i32 1, i32 %17, i32 192)
  %19 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %22 = call i32 @sbus_request(%struct.hfi1_devdata* %19, i32 %20, i32 1, i32 %21, i32 576)
  %23 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %26 = call i32 @sbus_request(%struct.hfi1_devdata* %23, i32 %24, i32 3, i32 %25, i32 -2147483648)
  store i32 0, i32* %6, align 4
  br label %27

27:                                               ; preds = %45, %2
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %30 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %37 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %38 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @sbus_request(%struct.hfi1_devdata* %34, i32 %35, i32 20, i32 %36, i32 %43)
  br label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %6, align 4
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %52 = call i32 @sbus_request(%struct.hfi1_devdata* %49, i32 %50, i32 1, i32 %51, i32 64)
  %53 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %56 = call i32 @sbus_request(%struct.hfi1_devdata* %53, i32 %54, i32 22, i32 %55, i32 786432)
  %57 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %58 = load %struct.firmware_details*, %struct.firmware_details** %5, align 8
  %59 = getelementptr inbounds %struct.firmware_details, %struct.firmware_details* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @run_rsa(%struct.hfi1_devdata* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %48
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %71

66:                                               ; preds = %48
  %67 = load %struct.hfi1_devdata*, %struct.hfi1_devdata** %4, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @WRITE_SBUS_RECEIVER, align 4
  %70 = call i32 @sbus_request(%struct.hfi1_devdata* %67, i32 %68, i32 1, i32 %69, i32 320)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %64
  %72 = load i32, i32* %3, align 4
  ret i32 %72
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
