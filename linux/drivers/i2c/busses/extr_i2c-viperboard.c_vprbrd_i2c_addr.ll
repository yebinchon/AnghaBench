; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-viperboard.c_vprbrd_i2c_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.vprbrd_i2c_addr_msg = type { i32 }

@VPRBRD_EP_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failure transmitting usb\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.vprbrd_i2c_addr_msg*)* @vprbrd_i2c_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_i2c_addr(%struct.usb_device* %0, %struct.vprbrd_i2c_addr_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.vprbrd_i2c_addr_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.vprbrd_i2c_addr_msg* %1, %struct.vprbrd_i2c_addr_msg** %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %10 = load i32, i32* @VPRBRD_EP_OUT, align 4
  %11 = call i32 @usb_sndbulkpipe(%struct.usb_device* %9, i32 %10)
  %12 = load %struct.vprbrd_i2c_addr_msg*, %struct.vprbrd_i2c_addr_msg** %5, align 8
  %13 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %14 = call i32 @usb_bulk_msg(%struct.usb_device* %8, i32 %11, %struct.vprbrd_i2c_addr_msg* %12, i32 4, i32* %7, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 4, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %2
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EREMOTEIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, %struct.vprbrd_i2c_addr_msg*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
