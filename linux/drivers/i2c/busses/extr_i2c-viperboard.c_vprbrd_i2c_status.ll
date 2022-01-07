; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, i64 }
%struct.vprbrd_i2c_status = type { i32 }
%struct.vprbrd = type { i32 }

@VPRBRD_USB_REQUEST_I2C = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_IN = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failure in usb communication\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"  status = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failure: i2c protocol error\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.vprbrd_i2c_status*, i32)* @vprbrd_i2c_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_status(%struct.i2c_adapter* %0, %struct.vprbrd_i2c_status* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_adapter*, align 8
  %6 = alloca %struct.vprbrd_i2c_status*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vprbrd*, align 8
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %5, align 8
  store %struct.vprbrd_i2c_status* %1, %struct.vprbrd_i2c_status** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vprbrd*
  store %struct.vprbrd* %14, %struct.vprbrd** %10, align 8
  store i32 4, i32* %8, align 4
  %15 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %16 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vprbrd*, %struct.vprbrd** %10, align 8
  %19 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @usb_rcvctrlpipe(i32 %20, i32 0)
  %22 = load i32, i32* @VPRBRD_USB_REQUEST_I2C, align 4
  %23 = load i32, i32* @VPRBRD_USB_TYPE_IN, align 4
  %24 = load %struct.vprbrd_i2c_status*, %struct.vprbrd_i2c_status** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %27 = call i32 @usb_control_msg(i32 %17, i32 %21, i32 %22, i32 %23, i32 0, i32 0, %struct.vprbrd_i2c_status* %24, i32 %25, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EREMOTEIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %59

41:                                               ; preds = %32
  %42 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %42, i32 0, i32 0
  %44 = load %struct.vprbrd_i2c_status*, %struct.vprbrd_i2c_status** %6, align 8
  %45 = getelementptr inbounds %struct.vprbrd_i2c_status, %struct.vprbrd_i2c_status* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_dbg(i32* %43, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load %struct.vprbrd_i2c_status*, %struct.vprbrd_i2c_status** %6, align 8
  %49 = getelementptr inbounds %struct.vprbrd_i2c_status, %struct.vprbrd_i2c_status* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load %struct.i2c_adapter*, %struct.i2c_adapter** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %53, i32 0, i32 0
  %55 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @EPROTO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %41
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %52, %35
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_i2c_status*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
