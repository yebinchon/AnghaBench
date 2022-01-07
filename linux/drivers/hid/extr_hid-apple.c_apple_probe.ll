; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-apple.c_apple_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.apple_sc = type { i64 }

@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"can't alloc apple descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@APPLE_HIDDEV = common dso_local global i64 0, align 8
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@APPLE_IGNORE_HIDINPUT = common dso_local global i64 0, align 8
@HID_CONNECT_HIDINPUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @apple_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apple_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.apple_sc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %10 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %15 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.apple_sc* @devm_kzalloc(i32* %15, i32 8, i32 %16)
  store %struct.apple_sc* %17, %struct.apple_sc** %7, align 8
  %18 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %19 = icmp eq %struct.apple_sc* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %70

25:                                               ; preds = %2
  %26 = load i64, i64* %6, align 8
  %27 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %28 = getelementptr inbounds %struct.apple_sc, %struct.apple_sc* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = load %struct.apple_sc*, %struct.apple_sc** %7, align 8
  %31 = call i32 @hid_set_drvdata(%struct.hid_device* %29, %struct.apple_sc* %30)
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = call i32 @hid_parse(%struct.hid_device* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %25
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = call i32 @hid_err(%struct.hid_device* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %70

40:                                               ; preds = %25
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @APPLE_HIDDEV, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @APPLE_IGNORE_HIDINPUT, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @HID_CONNECT_HIDINPUT, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %8, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @hid_hw_start(%struct.hid_device* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %67 = call i32 @hid_err(%struct.hid_device* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %68 = load i32, i32* %9, align 4
  store i32 %68, i32* %3, align 4
  br label %70

69:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %65, %36, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.apple_sc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.apple_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
