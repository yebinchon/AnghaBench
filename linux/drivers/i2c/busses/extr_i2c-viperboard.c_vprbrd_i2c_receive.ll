; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.vprbrd_i2c_read_msg = type { i32 }

@VPRBRD_EP_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failure transmitting usb\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@VPRBRD_EP_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failure receiving usb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.vprbrd_i2c_read_msg*, i32)* @vprbrd_i2c_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_receive(%struct.usb_device* %0, %struct.vprbrd_i2c_read_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.vprbrd_i2c_read_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.vprbrd_i2c_read_msg* %1, %struct.vprbrd_i2c_read_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %11 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %12 = load i32, i32* @VPRBRD_EP_OUT, align 4
  %13 = call i32 @usb_sndbulkpipe(%struct.usb_device* %11, i32 %12)
  %14 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %5, align 8
  %15 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %16 = call i32 @usb_bulk_msg(%struct.usb_device* %10, i32 %13, %struct.vprbrd_i2c_read_msg* %14, i32 4, i32* %8, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 4
  br i1 %22, label %23, label %29

23:                                               ; preds = %19, %3
  %24 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %25 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %24, i32 0, i32 0
  %26 = call i32 @dev_err(i32* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EREMOTEIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %23, %19
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %32 = load i32, i32* @VPRBRD_EP_IN, align 4
  %33 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %31, i32 %32)
  %34 = load %struct.vprbrd_i2c_read_msg*, %struct.vprbrd_i2c_read_msg** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %37 = call i32 @usb_bulk_msg(%struct.usb_device* %30, i32 %33, %struct.vprbrd_i2c_read_msg* %34, i32 %35, i32* %8, i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %29
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EREMOTEIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load i32, i32* %9, align 4
  ret i32 %51
}

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, %struct.vprbrd_i2c_read_msg*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
