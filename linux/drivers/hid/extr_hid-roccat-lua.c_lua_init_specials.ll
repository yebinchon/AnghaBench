; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_init_specials.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-roccat-lua.c_lua_init_specials.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }
%struct.usb_device = type { i32 }
%struct.lua_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc device descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"couldn't init struct lua_device\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"cannot create sysfs files\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @lua_init_specials to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lua_init_specials(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.lua_device*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.usb_interface* @to_usb_interface(i32 %11)
  store %struct.usb_interface* %12, %struct.usb_interface** %4, align 8
  %13 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %14 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %13)
  store %struct.usb_device* %14, %struct.usb_device** %5, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.lua_device* @kzalloc(i32 4, i32 %15)
  store %struct.lua_device* %16, %struct.lua_device** %6, align 8
  %17 = load %struct.lua_device*, %struct.lua_device** %6, align 8
  %18 = icmp ne %struct.lua_device* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %49

24:                                               ; preds = %1
  %25 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %26 = load %struct.lua_device*, %struct.lua_device** %6, align 8
  %27 = call i32 @hid_set_drvdata(%struct.hid_device* %25, %struct.lua_device* %26)
  %28 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %29 = load %struct.lua_device*, %struct.lua_device** %6, align 8
  %30 = call i32 @lua_init_lua_device_struct(%struct.usb_device* %28, %struct.lua_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %35 = call i32 @hid_err(%struct.hid_device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %45

36:                                               ; preds = %24
  %37 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %38 = call i32 @lua_create_sysfs_attributes(%struct.usb_interface* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %43 = call i32 @hid_err(%struct.hid_device* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %45

44:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %49

45:                                               ; preds = %41, %33
  %46 = load %struct.lua_device*, %struct.lua_device** %6, align 8
  %47 = call i32 @kfree(%struct.lua_device* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %44, %19
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local %struct.lua_device* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.lua_device*) #1

declare dso_local i32 @lua_init_lua_device_struct(%struct.usb_device*, %struct.lua_device*) #1

declare dso_local i32 @lua_create_sysfs_attributes(%struct.usb_interface*) #1

declare dso_local i32 @kfree(%struct.lua_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
