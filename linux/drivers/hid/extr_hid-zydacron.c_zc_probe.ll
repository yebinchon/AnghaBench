; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-zydacron.c_zc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.zc_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"can't alloc descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @zc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zc_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.zc_device*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.zc_device* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.zc_device* %11, %struct.zc_device** %7, align 8
  %12 = load %struct.zc_device*, %struct.zc_device** %7, align 8
  %13 = icmp eq %struct.zc_device* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = call i32 @hid_err(%struct.hid_device* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %42

19:                                               ; preds = %2
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = load %struct.zc_device*, %struct.zc_device** %7, align 8
  %22 = call i32 @hid_set_drvdata(%struct.hid_device* %20, %struct.zc_device* %21)
  %23 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %24 = call i32 @hid_parse(%struct.hid_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_err(%struct.hid_device* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %42

31:                                               ; preds = %19
  %32 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %33 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %34 = call i32 @hid_hw_start(%struct.hid_device* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %39 = call i32 @hid_err(%struct.hid_device* %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %27, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.zc_device* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.zc_device*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
