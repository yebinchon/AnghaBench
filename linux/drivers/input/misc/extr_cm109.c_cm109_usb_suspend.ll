; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_cm109_usb_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/misc/extr_cm109.c_cm109_usb_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cm109_dev = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"cm109: usb_suspend (event=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, i32)* @cm109_usb_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm109_usb_suspend(%struct.usb_interface* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.cm109_dev*, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  %7 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %8 = call %struct.cm109_dev* @usb_get_intfdata(%struct.usb_interface* %7)
  store %struct.cm109_dev* %8, %struct.cm109_dev** %5, align 8
  %9 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %10 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %3, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dev_info(i32* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.cm109_dev*, %struct.cm109_dev** %5, align 8
  %15 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.cm109_dev*, %struct.cm109_dev** %5, align 8
  %18 = call i32 @cm109_stop_traffic(%struct.cm109_dev* %17)
  %19 = load %struct.cm109_dev*, %struct.cm109_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cm109_dev, %struct.cm109_dev* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  ret i32 0
}

declare dso_local %struct.cm109_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cm109_stop_traffic(%struct.cm109_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
