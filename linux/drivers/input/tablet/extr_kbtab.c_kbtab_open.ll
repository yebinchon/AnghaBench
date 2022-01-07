; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_kbtab.c_kbtab_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_kbtab.c_kbtab_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.kbtab = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @kbtab_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kbtab_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.kbtab*, align 8
  %5 = alloca %struct.usb_device*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %6 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %7 = call %struct.kbtab* @input_get_drvdata(%struct.input_dev* %6)
  store %struct.kbtab* %7, %struct.kbtab** %4, align 8
  %8 = load %struct.kbtab*, %struct.kbtab** %4, align 8
  %9 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(i32 %10)
  store %struct.usb_device* %11, %struct.usb_device** %5, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %13 = load %struct.kbtab*, %struct.kbtab** %4, align 8
  %14 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.usb_device* %12, %struct.usb_device** %16, align 8
  %17 = load %struct.kbtab*, %struct.kbtab** %4, align 8
  %18 = getelementptr inbounds %struct.kbtab, %struct.kbtab* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @usb_submit_urb(%struct.TYPE_2__* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local %struct.kbtab* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
