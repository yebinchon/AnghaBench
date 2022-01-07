; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-belkin.c_belkin_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-belkin.c_belkin_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@BELKIN_HIDDEV = common dso_local global i64 0, align 8
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @belkin_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @belkin_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %9 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @hid_set_drvdata(%struct.hid_device* %11, i8* %13)
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = call i32 @hid_parse(%struct.hid_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = call i32 @hid_err(%struct.hid_device* %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %42

22:                                               ; preds = %2
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @BELKIN_HIDDEV, align 8
  %27 = and i64 %25, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = or i32 %24, %33
  %35 = call i32 @hid_hw_start(%struct.hid_device* %23, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = call i32 @hid_err(%struct.hid_device* %39, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %42

41:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %44

42:                                               ; preds = %38, %19
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %41
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
