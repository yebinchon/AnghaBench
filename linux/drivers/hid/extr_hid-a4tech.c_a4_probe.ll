; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-a4tech.c_a4_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }
%struct.a4tech_sc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc device descriptor\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @a4_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a4_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca %struct.a4tech_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %9 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.a4tech_sc* @devm_kzalloc(i32* %9, i32 4, i32 %10)
  store %struct.a4tech_sc* %11, %struct.a4tech_sc** %6, align 8
  %12 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %13 = icmp eq %struct.a4tech_sc* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = call i32 @hid_err(%struct.hid_device* %15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %21 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %24 = getelementptr inbounds %struct.a4tech_sc, %struct.a4tech_sc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %26 = load %struct.a4tech_sc*, %struct.a4tech_sc** %6, align 8
  %27 = call i32 @hid_set_drvdata(%struct.hid_device* %25, %struct.a4tech_sc* %26)
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @hid_parse(%struct.hid_device* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %19
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = call i32 @hid_err(%struct.hid_device* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %47

36:                                               ; preds = %19
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %39 = call i32 @hid_hw_start(%struct.hid_device* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = call i32 @hid_err(%struct.hid_device* %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42, %32, %14
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.a4tech_sc* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.a4tech_sc*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
