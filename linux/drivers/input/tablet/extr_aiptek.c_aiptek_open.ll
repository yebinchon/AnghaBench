; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/tablet/extr_aiptek.c_aiptek_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.aiptek = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*)* @aiptek_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiptek_open(%struct.input_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.aiptek*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  %5 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %6 = call %struct.aiptek* @input_get_drvdata(%struct.input_dev* %5)
  store %struct.aiptek* %6, %struct.aiptek** %4, align 8
  %7 = load %struct.aiptek*, %struct.aiptek** %4, align 8
  %8 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @interface_to_usbdev(i32 %9)
  %11 = load %struct.aiptek*, %struct.aiptek** %4, align 8
  %12 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.aiptek*, %struct.aiptek** %4, align 8
  %16 = getelementptr inbounds %struct.aiptek, %struct.aiptek* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i64 @usb_submit_urb(%struct.TYPE_2__* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.aiptek* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @interface_to_usbdev(i32) #1

declare dso_local i64 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
