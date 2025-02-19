; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tiny-usb.c_usb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i64 }
%struct.i2c_tiny_usb = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, i32, i32, i32, i8*, i32)* @usb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_read(%struct.i2c_adapter* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.i2c_tiny_usb*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.i2c_tiny_usb*
  store %struct.i2c_tiny_usb* %20, %struct.i2c_tiny_usb** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i32 %21, i32 %22)
  store i8* %23, i8** %15, align 8
  %24 = load i8*, i8** %15, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %55

29:                                               ; preds = %6
  %30 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %14, align 8
  %31 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.i2c_tiny_usb*, %struct.i2c_tiny_usb** %14, align 8
  %34 = getelementptr inbounds %struct.i2c_tiny_usb, %struct.i2c_tiny_usb* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @usb_rcvctrlpipe(i32 %35, i32 0)
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %39 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %15, align 8
  %46 = load i32, i32* %13, align 4
  %47 = call i32 @usb_control_msg(i32 %32, i32 %36, i32 %37, i32 %42, i32 %43, i32 %44, i8* %45, i32 %46, i32 2000)
  store i32 %47, i32* %16, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i8*, i8** %15, align 8
  %53 = call i32 @kfree(i8* %52)
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %7, align 4
  br label %55

55:                                               ; preds = %29, %26
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
