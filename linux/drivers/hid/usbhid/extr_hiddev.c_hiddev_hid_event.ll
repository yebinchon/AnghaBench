; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_hid_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/usbhid/extr_hiddev.c_hiddev_hid_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hid_usage = type { i32 }
%struct.hiddev_usage_ref = type { i32, i32, %struct.hid_usage*, i32, i32, i32 }

@HID_INPUT_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_INPUT = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REPORT_TYPE_FEATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hiddev_hid_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hiddev_usage_ref, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %12 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @HID_INPUT_REPORT, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @HID_REPORT_TYPE_INPUT, align 4
  br label %36

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @HID_REPORT_TYPE_OUTPUT, align 4
  br label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @HID_REPORT_TYPE_FEATURE, align 4
  br label %32

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  br label %34

34:                                               ; preds = %32, %23
  %35 = phi i32 [ %24, %23 ], [ %33, %32 ]
  br label %36

36:                                               ; preds = %34, %17
  %37 = phi i32 [ %18, %17 ], [ %35, %34 ]
  %38 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %40 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 4
  store i32 %43, i32* %44, align 4
  %45 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %46 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 3
  store i32 %47, i32* %48, align 8
  %49 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %50 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %51 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = sub i64 0, %53
  %55 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %49, i64 %54
  %56 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 2
  store %struct.hid_usage* %55, %struct.hid_usage** %56, align 8
  %57 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %58 = getelementptr inbounds %struct.hid_usage, %struct.hid_usage* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %8, align 4
  %62 = getelementptr inbounds %struct.hiddev_usage_ref, %struct.hiddev_usage_ref* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %64 = call i32 @hiddev_send_event(%struct.hid_device* %63, %struct.hiddev_usage_ref* %10)
  ret void
}

declare dso_local i32 @hiddev_send_event(%struct.hid_device*, %struct.hiddev_usage_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
