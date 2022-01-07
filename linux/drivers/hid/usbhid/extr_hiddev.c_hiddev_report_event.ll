; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_report_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_report_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32, i32 }
%struct.hiddev_usage_ref = type { i32, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_INPUT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_FEATURE = common dso_local global i32 0, align 4
@HID_FIELD_INDEX_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hiddev_report_event(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hiddev_usage_ref, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %7 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %8 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = call i32 @memset(%struct.hiddev_usage_ref* %6, i32 0, i32 12)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @HID_INPUT_REPORT, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @HID_REPORT_TYPE_INPUT, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @HID_REPORT_TYPE_OUTPUT, align 4
  br label %31

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @HID_REPORT_TYPE_FEATURE, align 4
  br label %29

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  br label %31

31:                                               ; preds = %29, %20
  %32 = phi i32 [ %21, %20 ], [ %30, %29 ]
  br label %33

33:                                               ; preds = %31, %14
  %34 = phi i32 [ %15, %14 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %6, i32 0, i32 2
  store i32 %34, i32* %35, align 4
  %36 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %37 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* @HID_FIELD_INDEX_NONE, align 4
  %41 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %43 = call i32 @hiddev_send_event(%struct.hid_device* %42, %struct.hiddev_usage_ref* %6)
  ret void
}

declare dso_local i32 @memset(%struct.hiddev_usage_ref*, i32, i32) #1

declare dso_local i32 @hiddev_send_event(%struct.hid_device*, %struct.hiddev_usage_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
