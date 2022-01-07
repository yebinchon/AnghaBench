; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-appleir.c_appleir_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.appleir = type { i32, i32, %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_QUIRK_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@key_up_tick = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @appleir_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @appleir_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.appleir*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.appleir* @kzalloc(i32 16, i32 %8)
  store %struct.appleir* %9, %struct.appleir** %7, align 8
  %10 = load %struct.appleir*, %struct.appleir** %7, align 8
  %11 = icmp ne %struct.appleir* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = load %struct.appleir*, %struct.appleir** %7, align 8
  %18 = getelementptr inbounds %struct.appleir, %struct.appleir* %17, i32 0, i32 2
  store %struct.hid_device* %16, %struct.hid_device** %18, align 8
  %19 = load i32, i32* @HID_QUIRK_HIDINPUT_FORCE, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.appleir*, %struct.appleir** %7, align 8
  %25 = getelementptr inbounds %struct.appleir, %struct.appleir* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.appleir*, %struct.appleir** %7, align 8
  %28 = getelementptr inbounds %struct.appleir, %struct.appleir* %27, i32 0, i32 0
  %29 = load i32, i32* @key_up_tick, align 4
  %30 = call i32 @timer_setup(i32* %28, i32 %29, i32 0)
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load %struct.appleir*, %struct.appleir** %7, align 8
  %33 = call i32 @hid_set_drvdata(%struct.hid_device* %31, %struct.appleir* %32)
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = call i32 @hid_parse(%struct.hid_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %15
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = call i32 @hid_err(%struct.hid_device* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %53

41:                                               ; preds = %15
  %42 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %43 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %44 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @hid_hw_start(%struct.hid_device* %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %51 = call i32 @hid_err(%struct.hid_device* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %53

52:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %49, %38
  %54 = load %struct.appleir*, %struct.appleir** %7, align 8
  %55 = call i32 @kfree(%struct.appleir* %54)
  br label %56

56:                                               ; preds = %53, %12
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.appleir* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.appleir*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.appleir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
