; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_retrieve_hid_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_retrieve_hid_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom_features = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.wacom = type { %struct.usb_interface* }
%struct.usb_interface = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@WIRELESS = common dso_local global i64 0, align 8
@WACOM_DEVICETYPE_WL_MONITOR = common dso_local global i32 0, align 4
@WACOM_DEVICETYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.wacom_features*)* @wacom_retrieve_hid_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_retrieve_hid_descriptor(%struct.hid_device* %0, %struct.wacom_features* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca %struct.wacom*, align 8
  %6 = alloca %struct.usb_interface*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.wacom_features* %1, %struct.wacom_features** %4, align 8
  %7 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %8 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %7)
  store %struct.wacom* %8, %struct.wacom** %5, align 8
  %9 = load %struct.wacom*, %struct.wacom** %5, align 8
  %10 = getelementptr inbounds %struct.wacom, %struct.wacom* %9, i32 0, i32 0
  %11 = load %struct.usb_interface*, %struct.usb_interface** %10, align 8
  store %struct.usb_interface* %11, %struct.usb_interface** %6, align 8
  %12 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %13 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %15 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %14, i32 0, i32 1
  store i32 4, i32* %15, align 4
  %16 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %17 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %16, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %19 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %18, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %21 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %20, i32 0, i32 3
  store i32 1, i32* %21, align 4
  %22 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %23 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WIRELESS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %2
  %28 = load %struct.usb_interface*, %struct.usb_interface** %6, align 8
  %29 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @WACOM_DEVICETYPE_WL_MONITOR, align 4
  %37 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %38 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  br label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @WACOM_DEVICETYPE_NONE, align 4
  %41 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %42 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %46 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %47 = call i32 @wacom_parse_hid(%struct.hid_device* %45, %struct.wacom_features* %46)
  br label %48

48:                                               ; preds = %44, %43
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_parse_hid(%struct.hid_device*, %struct.wacom_features*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
