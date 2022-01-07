; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-plantronics.c_plantronics_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@HID_CONNECT_HIDINPUT_FORCE = common dso_local global i32 0, align 4
@HID_CONNECT_HIDDEV_FORCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @plantronics_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plantronics_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_device_id*, align 8
  %5 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %4, align 8
  %6 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %7 = call i32 @hid_parse(%struct.hid_device* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = call i32 @hid_err(%struct.hid_device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %15 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %16 = call i64 @plantronics_device_type(%struct.hid_device* %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @hid_set_drvdata(%struct.hid_device* %14, i8* %17)
  %19 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %20 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %21 = load i32, i32* @HID_CONNECT_HIDINPUT_FORCE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @HID_CONNECT_HIDDEV_FORCE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @hid_hw_start(%struct.hid_device* %19, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %30 = call i32 @hid_err(%struct.hid_device* %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %13
  br label %32

32:                                               ; preds = %31, %10
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, i8*) #1

declare dso_local i64 @plantronics_device_type(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
