; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cmedia.c_cmhid_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-cmedia.c_cmhid_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.cmhid = type { %struct.hid_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HID_QUIRK_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @cmhid_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmhid_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmhid*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.cmhid* @kzalloc(i32 8, i32 %8)
  store %struct.cmhid* %9, %struct.cmhid** %7, align 8
  %10 = load %struct.cmhid*, %struct.cmhid** %7, align 8
  %11 = icmp ne %struct.cmhid* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %17 = load %struct.cmhid*, %struct.cmhid** %7, align 8
  %18 = getelementptr inbounds %struct.cmhid, %struct.cmhid* %17, i32 0, i32 0
  store %struct.hid_device* %16, %struct.hid_device** %18, align 8
  %19 = load i32, i32* @HID_QUIRK_HIDINPUT_FORCE, align 4
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %25 = load %struct.cmhid*, %struct.cmhid** %7, align 8
  %26 = call i32 @hid_set_drvdata(%struct.hid_device* %24, %struct.cmhid* %25)
  %27 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %28 = call i32 @hid_parse(%struct.hid_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %15
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = call i32 @hid_err(%struct.hid_device* %32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %46

34:                                               ; preds = %15
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %37 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @hid_hw_start(%struct.hid_device* %35, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %46

45:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %51

46:                                               ; preds = %42, %31
  %47 = load %struct.cmhid*, %struct.cmhid** %7, align 8
  %48 = call i32 @kfree(%struct.cmhid* %47)
  br label %49

49:                                               ; preds = %46, %12
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.cmhid* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.cmhid*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kfree(%struct.cmhid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
