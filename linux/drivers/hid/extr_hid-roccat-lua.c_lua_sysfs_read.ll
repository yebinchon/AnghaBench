; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_sysfs_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_sysfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.kobject = type { i32 }
%struct.device = type { i32 }
%struct.lua_device = type { i32 }
%struct.usb_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.kobject*, i8*, i64, i64, i64, i32)* @lua_sysfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_sysfs_read(%struct.file* %0, %struct.kobject* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.kobject*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.device*, align 8
  %17 = alloca %struct.lua_device*, align 8
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
  %21 = call %struct.device* @kobj_to_dev(%struct.kobject* %20)
  store %struct.device* %21, %struct.device** %16, align 8
  %22 = load %struct.device*, %struct.device** %16, align 8
  %23 = call i32 @dev_get_drvdata(%struct.device* %22)
  %24 = call %struct.lua_device* @hid_get_drvdata(i32 %23)
  store %struct.lua_device* %24, %struct.lua_device** %17, align 8
  %25 = load %struct.device*, %struct.device** %16, align 8
  %26 = call i32 @to_usb_interface(%struct.device* %25)
  %27 = call %struct.usb_device* @interface_to_usbdev(i32 %26)
  store %struct.usb_device* %27, %struct.usb_device** %18, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %14, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %64

32:                                               ; preds = %7
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %64

42:                                               ; preds = %35
  %43 = load %struct.lua_device*, %struct.lua_device** %17, align 8
  %44 = getelementptr inbounds %struct.lua_device, %struct.lua_device* %43, i32 0, i32 0
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  %47 = load i32, i32* %15, align 4
  %48 = load i8*, i8** %11, align 8
  %49 = load i64, i64* %14, align 8
  %50 = call i32 @roccat_common2_receive(%struct.usb_device* %46, i32 %47, i8* %48, i64 %49)
  store i32 %50, i32* %19, align 4
  %51 = load %struct.lua_device*, %struct.lua_device** %17, align 8
  %52 = getelementptr inbounds %struct.lua_device, %struct.lua_device* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* %19, align 4
  %58 = sext i32 %57 to i64
  br label %61

59:                                               ; preds = %42
  %60 = load i64, i64* %14, align 8
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i64 [ %58, %56 ], [ %60, %59 ]
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %39, %31
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local %struct.device* @kobj_to_dev(%struct.kobject*) #1

declare dso_local %struct.lua_device* @hid_get_drvdata(i32) #1

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
