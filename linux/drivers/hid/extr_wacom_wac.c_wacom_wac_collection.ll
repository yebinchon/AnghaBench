; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_collection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_collection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i64 }
%struct.hid_field = type { i32 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@HID_INPUT_REPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32, %struct.hid_field*, i32)* @wacom_wac_collection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_wac_collection(%struct.hid_device* %0, %struct.hid_report* %1, i32 %2, %struct.hid_field* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hid_device*, align 8
  %8 = alloca %struct.hid_report*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hid_field*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.wacom*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %7, align 8
  store %struct.hid_report* %1, %struct.hid_report** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.hid_field* %3, %struct.hid_field** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %14 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %13)
  store %struct.wacom* %14, %struct.wacom** %12, align 8
  %15 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %16 = call i64 @WACOM_FINGER_FIELD(%struct.hid_field* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %5
  %19 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %20 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @wacom_set_num_expected(%struct.hid_device* %19, %struct.hid_report* %20, i32 %21, %struct.hid_field* %22, i32 %23)
  br label %25

25:                                               ; preds = %18, %5
  %26 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %27 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @wacom_report_events(%struct.hid_device* %26, %struct.hid_report* %27, i32 %28, i32 %29)
  %31 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %32 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HID_INPUT_REPORT, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 -1, i32* %6, align 4
  br label %67

37:                                               ; preds = %25
  %38 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %39 = call i64 @WACOM_PEN_FIELD(%struct.hid_field* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.wacom*, %struct.wacom** %12, align 8
  %43 = getelementptr inbounds %struct.wacom, %struct.wacom* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %49 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %50 = call i32 @wacom_wac_pen_report(%struct.hid_device* %48, %struct.hid_report* %49)
  br label %66

51:                                               ; preds = %41, %37
  %52 = load %struct.hid_field*, %struct.hid_field** %10, align 8
  %53 = call i64 @WACOM_FINGER_FIELD(%struct.hid_field* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.wacom*, %struct.wacom** %12, align 8
  %57 = getelementptr inbounds %struct.wacom, %struct.wacom* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  %63 = load %struct.hid_report*, %struct.hid_report** %8, align 8
  %64 = call i32 @wacom_wac_finger_report(%struct.hid_device* %62, %struct.hid_report* %63)
  br label %65

65:                                               ; preds = %61, %55, %51
  br label %66

66:                                               ; preds = %65, %47
  store i32 0, i32* %6, align 4
  br label %67

67:                                               ; preds = %66, %36
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @WACOM_FINGER_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_set_num_expected(%struct.hid_device*, %struct.hid_report*, i32, %struct.hid_field*, i32) #1

declare dso_local i32 @wacom_report_events(%struct.hid_device*, %struct.hid_report*, i32, i32) #1

declare dso_local i64 @WACOM_PEN_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_pen_report(%struct.hid_device*, %struct.hid_report*) #1

declare dso_local i32 @wacom_wac_finger_report(%struct.hid_device*, %struct.hid_report*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
