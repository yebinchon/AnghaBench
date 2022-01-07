; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-arvo.c_arvo_sysfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.arvo_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, i8*, i64, i64, i64, i32)* @arvo_sysfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arvo_sysfs_read(%struct.file* %0, %struct.kobject* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.kobject*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.arvo_device*, align 8
  %18 = alloca %struct.usb_device*, align 8
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %9, align 8
  store %struct.kobject* %1, %struct.kobject** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load %struct.kobject*, %struct.kobject** %10, align 8
  %21 = call %struct.TYPE_4__* @kobj_to_dev(%struct.kobject* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %16, align 8
  %26 = load %struct.device*, %struct.device** %16, align 8
  %27 = call i32 @dev_get_drvdata(%struct.device* %26)
  %28 = call %struct.arvo_device* @hid_get_drvdata(i32 %27)
  store %struct.arvo_device* %28, %struct.arvo_device** %17, align 8
  %29 = load %struct.device*, %struct.device** %16, align 8
  %30 = call i32 @to_usb_interface(%struct.device* %29)
  %31 = call %struct.usb_device* @interface_to_usbdev(i32 %30)
  store %struct.usb_device* %31, %struct.usb_device** %18, align 8
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %14, align 8
  %34 = icmp uge i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %68

36:                                               ; preds = %7
  %37 = load i64, i64* %12, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %36
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %68

46:                                               ; preds = %39
  %47 = load %struct.arvo_device*, %struct.arvo_device** %17, align 8
  %48 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %14, align 8
  %54 = call i32 @roccat_common2_receive(%struct.usb_device* %50, i32 %51, i8* %52, i64 %53)
  store i32 %54, i32* %19, align 4
  %55 = load %struct.arvo_device*, %struct.arvo_device** %17, align 8
  %56 = getelementptr inbounds %struct.arvo_device, %struct.arvo_device* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %19, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  br label %65

63:                                               ; preds = %46
  %64 = load i64, i64* %14, align 8
  br label %65

65:                                               ; preds = %63, %60
  %66 = phi i64 [ %62, %60 ], [ %64, %63 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %8, align 4
  br label %68

68:                                               ; preds = %65, %43, %35
  %69 = load i32, i32* %8, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.arvo_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_receive(%struct.usb_device*, i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
