; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_show_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_show_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device_attribute = type { i32 }
%struct.kone_device = type { i32 }
%struct.usb_device = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @kone_sysfs_show_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_sysfs_show_weight(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.kone_device*, align 8
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %5, align 8
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = call i32 @dev_get_drvdata(%struct.device* %17)
  %19 = call %struct.kone_device* @hid_get_drvdata(i32 %18)
  store %struct.kone_device* %19, %struct.kone_device** %8, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call i32 @to_usb_interface(%struct.device* %20)
  %22 = call %struct.usb_device* @interface_to_usbdev(i32 %21)
  store %struct.usb_device* %22, %struct.usb_device** %9, align 8
  %23 = load %struct.kone_device*, %struct.kone_device** %8, align 8
  %24 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %27 = call i32 @kone_get_weight(%struct.usb_device* %26, i32* %10)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.kone_device*, %struct.kone_device** %8, align 8
  %29 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %3
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @snprintf(i8* %36, i32 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %33
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kone_get_weight(%struct.usb_device*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
