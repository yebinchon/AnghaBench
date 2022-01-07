; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_hid_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_hid_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { %struct.hid_report** }
%struct.hid_report = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32* }
%struct.wacom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.hid_data }
%struct.hid_data = type { i64, i64 }

@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @wacom_hid_set_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_hid_set_device_mode(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.wacom*, align 8
  %5 = alloca %struct.hid_data*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca %struct.hid_report_enum*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.wacom* %9, %struct.wacom** %4, align 8
  %10 = load %struct.wacom*, %struct.wacom** %4, align 8
  %11 = getelementptr inbounds %struct.wacom, %struct.wacom* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.hid_data* %12, %struct.hid_data** %5, align 8
  %13 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %14 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %20 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %19, i32 0, i32 0
  %21 = load %struct.hid_report_enum*, %struct.hid_report_enum** %20, align 8
  %22 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %23 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %21, i64 %22
  store %struct.hid_report_enum* %23, %struct.hid_report_enum** %7, align 8
  %24 = load %struct.hid_report_enum*, %struct.hid_report_enum** %7, align 8
  %25 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %24, i32 0, i32 0
  %26 = load %struct.hid_report**, %struct.hid_report*** %25, align 8
  %27 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %28 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %26, i64 %29
  %31 = load %struct.hid_report*, %struct.hid_report** %30, align 8
  store %struct.hid_report* %31, %struct.hid_report** %6, align 8
  %32 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %33 = icmp ne %struct.hid_report* %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %18
  %35 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %36 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %37, i64 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.hid_data*, %struct.hid_data** %5, align 8
  %43 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32 2, i32* %45, align 4
  %46 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %47 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %48 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %49 = call i32 @hid_hw_request(%struct.hid_device* %46, %struct.hid_report* %47, i32 %48)
  br label %50

50:                                               ; preds = %34, %18
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_request(%struct.hid_device*, %struct.hid_report*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
