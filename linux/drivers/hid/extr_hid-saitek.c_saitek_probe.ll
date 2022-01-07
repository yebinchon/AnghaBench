; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-saitek.c_saitek_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.saitek_sc = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc saitek descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @saitek_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saitek_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.saitek_sc*, align 8
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %9 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %10 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.saitek_sc* @devm_kzalloc(i32* %13, i32 16, i32 %14)
  store %struct.saitek_sc* %15, %struct.saitek_sc** %7, align 8
  %16 = load %struct.saitek_sc*, %struct.saitek_sc** %7, align 8
  %17 = icmp eq %struct.saitek_sc* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %20 = call i32 @hid_err(%struct.hid_device* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.saitek_sc*, %struct.saitek_sc** %7, align 8
  %26 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.saitek_sc*, %struct.saitek_sc** %7, align 8
  %28 = getelementptr inbounds %struct.saitek_sc, %struct.saitek_sc* %27, i32 0, i32 1
  store i32 -1, i32* %28, align 8
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = load %struct.saitek_sc*, %struct.saitek_sc** %7, align 8
  %31 = call i32 @hid_set_drvdata(%struct.hid_device* %29, %struct.saitek_sc* %30)
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = call i32 @hid_parse(%struct.hid_device* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %23
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = call i32 @hid_err(%struct.hid_device* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %51

40:                                               ; preds = %23
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %43 = call i32 @hid_hw_start(%struct.hid_device* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %48 = call i32 @hid_err(%struct.hid_device* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %46, %36, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.saitek_sc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.saitek_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
