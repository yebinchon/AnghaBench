; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-isku.c_isku_sysfs_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-isku.c_isku_sysfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.isku_device = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, i8*, i64, i64, i64, i32)* @isku_sysfs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isku_sysfs_write(%struct.file* %0, %struct.kobject* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.kobject*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.isku_device*, align 8
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
  %28 = call %struct.isku_device* @hid_get_drvdata(i32 %27)
  store %struct.isku_device* %28, %struct.isku_device** %17, align 8
  %29 = load %struct.device*, %struct.device** %16, align 8
  %30 = call i32 @to_usb_interface(%struct.device* %29)
  %31 = call %struct.usb_device* @interface_to_usbdev(i32 %30)
  store %struct.usb_device* %31, %struct.usb_device** %18, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %7
  %35 = load i64, i64* %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %7
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %63

41:                                               ; preds = %34
  %42 = load %struct.isku_device*, %struct.isku_device** %17, align 8
  %43 = getelementptr inbounds %struct.isku_device, %struct.isku_device* %42, i32 0, i32 0
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = load i64, i64* %13, align 8
  %49 = call i32 @roccat_common2_send_with_status(%struct.usb_device* %45, i32 %46, i8* %47, i64 %48)
  store i32 %49, i32* %19, align 4
  %50 = load %struct.isku_device*, %struct.isku_device** %17, align 8
  %51 = getelementptr inbounds %struct.isku_device, %struct.isku_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %19, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load i32, i32* %19, align 4
  %57 = sext i32 %56 to i64
  br label %60

58:                                               ; preds = %41
  %59 = load i64, i64* %13, align 8
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i64 [ %57, %55 ], [ %59, %58 ]
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %38
  %64 = load i32, i32* %8, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.isku_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @roccat_common2_send_with_status(%struct.usb_device*, i32, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
