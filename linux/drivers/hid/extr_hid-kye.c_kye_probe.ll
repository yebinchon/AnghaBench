; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-kye.c_kye_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-kye.c_kye_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_device_id = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"tablet enabling failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @kye_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kye_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %8 = call i32 @hid_parse(%struct.hid_device* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %13 = call i32 @hid_err(%struct.hid_device* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %16 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %17 = call i32 @hid_hw_start(%struct.hid_device* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = call i32 @hid_err(%struct.hid_device* %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %48

23:                                               ; preds = %14
  %24 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %25 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %44 [
    i32 133, label %27
    i32 130, label %27
    i32 129, label %27
    i32 131, label %27
    i32 132, label %27
    i32 128, label %27
    i32 134, label %36
  ]

27:                                               ; preds = %23, %23, %23, %23, %23, %23
  %28 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %29 = call i32 @kye_tablet_enable(%struct.hid_device* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %34 = call i32 @hid_err(%struct.hid_device* %33, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %45

35:                                               ; preds = %27
  br label %44

36:                                               ; preds = %23
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = call i32 @hid_hw_open(%struct.hid_device* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = call i32 @hid_hw_close(%struct.hid_device* %41)
  br label %43

43:                                               ; preds = %40, %36
  br label %44

44:                                               ; preds = %23, %43, %35
  store i32 0, i32* %3, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = call i32 @hid_hw_stop(%struct.hid_device* %46)
  br label %48

48:                                               ; preds = %45, %20, %11
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @kye_tablet_enable(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_open(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_close(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_stop(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
