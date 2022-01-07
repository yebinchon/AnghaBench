; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_write_profilex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-kone.c_kone_sysfs_write_profilex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.bin_attribute = type { i64 }
%struct.device = type { i32 }
%struct.kone_device = type { i32, %struct.kone_profile* }
%struct.kone_profile = type { i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)* @kone_sysfs_write_profilex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kone_sysfs_write_profilex(%struct.file* %0, %struct.kobject* %1, %struct.bin_attribute* %2, i8* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.kobject*, align 8
  %10 = alloca %struct.bin_attribute*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.device*, align 8
  %15 = alloca %struct.kone_device*, align 8
  %16 = alloca %struct.usb_device*, align 8
  %17 = alloca %struct.kone_profile*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.kobject* %1, %struct.kobject** %9, align 8
  store %struct.bin_attribute* %2, %struct.bin_attribute** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.kobject*, %struct.kobject** %9, align 8
  %21 = call %struct.TYPE_4__* @kobj_to_dev(%struct.kobject* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.device*, %struct.device** %24, align 8
  store %struct.device* %25, %struct.device** %14, align 8
  %26 = load %struct.device*, %struct.device** %14, align 8
  %27 = call i32 @dev_get_drvdata(%struct.device* %26)
  %28 = call %struct.kone_device* @hid_get_drvdata(i32 %27)
  store %struct.kone_device* %28, %struct.kone_device** %15, align 8
  %29 = load %struct.device*, %struct.device** %14, align 8
  %30 = call i32 @to_usb_interface(%struct.device* %29)
  %31 = call %struct.usb_device* @interface_to_usbdev(i32 %30)
  store %struct.usb_device* %31, %struct.usb_device** %16, align 8
  store i32 0, i32* %18, align 4
  %32 = load i64, i64* %12, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %6
  %35 = load i64, i64* %13, align 8
  %36 = icmp ne i64 %35, 4
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %6
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %85

40:                                               ; preds = %34
  %41 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %42 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %41, i32 0, i32 1
  %43 = load %struct.kone_profile*, %struct.kone_profile** %42, align 8
  %44 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %45 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i64*
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds %struct.kone_profile, %struct.kone_profile* %43, i64 %48
  store %struct.kone_profile* %49, %struct.kone_profile** %17, align 8
  %50 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %51 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load i8*, i8** %11, align 8
  %54 = load %struct.kone_profile*, %struct.kone_profile** %17, align 8
  %55 = call i32 @memcmp(i8* %53, %struct.kone_profile* %54, i32 4)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %40
  %59 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = bitcast i8* %60 to %struct.kone_profile*
  %62 = load %struct.bin_attribute*, %struct.bin_attribute** %10, align 8
  %63 = getelementptr inbounds %struct.bin_attribute, %struct.bin_attribute* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i64*
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  %68 = call i32 @kone_set_profile(%struct.usb_device* %59, %struct.kone_profile* %61, i64 %67)
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %58
  %72 = load %struct.kone_profile*, %struct.kone_profile** %17, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @memcpy(%struct.kone_profile* %72, i8* %73, i32 4)
  br label %75

75:                                               ; preds = %71, %58
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.kone_device*, %struct.kone_device** %15, align 8
  %78 = getelementptr inbounds %struct.kone_device, %struct.kone_device* %77, i32 0, i32 0
  %79 = call i32 @mutex_unlock(i32* %78)
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %18, align 4
  store i32 %83, i32* %7, align 4
  br label %85

84:                                               ; preds = %76
  store i32 4, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %82, %37
  %86 = load i32, i32* %7, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_4__* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.kone_device* @hid_get_drvdata(i32) #1

declare dso_local i32 @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(i32) #1

declare dso_local i32 @to_usb_interface(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcmp(i8*, %struct.kone_profile*, i32) #1

declare dso_local i32 @kone_set_profile(%struct.usb_device*, %struct.kone_profile*, i64) #1

declare dso_local i32 @memcpy(%struct.kone_profile*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
