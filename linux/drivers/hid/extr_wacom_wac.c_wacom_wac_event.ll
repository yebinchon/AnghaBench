; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i64, i64 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@HID_GENERIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_wac_event(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2, i64 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_field*, align 8
  %7 = alloca %struct.hid_usage*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.wacom*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_field* %1, %struct.hid_field** %6, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %10)
  store %struct.wacom* %11, %struct.wacom** %9, align 8
  %12 = load %struct.wacom*, %struct.wacom** %9, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HID_GENERIC, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %94

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %23 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %29 = getelementptr inbounds %struct.hid_field, %struct.hid_field* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26, %20
  br label %94

33:                                               ; preds = %26
  %34 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %35 = call i64 @WACOM_BATTERY_USAGE(%struct.hid_usage* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %40 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @wacom_wac_battery_event(%struct.hid_device* %38, %struct.hid_field* %39, %struct.hid_usage* %40, i64 %41)
  br label %94

43:                                               ; preds = %33
  %44 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %45 = call i64 @WACOM_PAD_FIELD(%struct.hid_field* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load %struct.wacom*, %struct.wacom** %9, align 8
  %49 = getelementptr inbounds %struct.wacom, %struct.wacom* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %55 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %56 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @wacom_wac_pad_event(%struct.hid_device* %54, %struct.hid_field* %55, %struct.hid_usage* %56, i64 %57)
  br label %93

59:                                               ; preds = %47, %43
  %60 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %61 = call i64 @WACOM_PEN_FIELD(%struct.hid_field* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %59
  %64 = load %struct.wacom*, %struct.wacom** %9, align 8
  %65 = getelementptr inbounds %struct.wacom, %struct.wacom* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %71 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %72 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = call i32 @wacom_wac_pen_event(%struct.hid_device* %70, %struct.hid_field* %71, %struct.hid_usage* %72, i64 %73)
  br label %92

75:                                               ; preds = %63, %59
  %76 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %77 = call i64 @WACOM_FINGER_FIELD(%struct.hid_field* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load %struct.wacom*, %struct.wacom** %9, align 8
  %81 = getelementptr inbounds %struct.wacom, %struct.wacom* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %79
  %86 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %87 = load %struct.hid_field*, %struct.hid_field** %6, align 8
  %88 = load %struct.hid_usage*, %struct.hid_usage** %7, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call i32 @wacom_wac_finger_event(%struct.hid_device* %86, %struct.hid_field* %87, %struct.hid_usage* %88, i64 %89)
  br label %91

91:                                               ; preds = %85, %79, %75
  br label %92

92:                                               ; preds = %91, %69
  br label %93

93:                                               ; preds = %92, %53
  br label %94

94:                                               ; preds = %19, %32, %93, %37
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @WACOM_BATTERY_USAGE(%struct.hid_usage*) #1

declare dso_local i32 @wacom_wac_battery_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64) #1

declare dso_local i64 @WACOM_PAD_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_pad_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64) #1

declare dso_local i64 @WACOM_PEN_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_pen_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64) #1

declare dso_local i64 @WACOM_FINGER_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_finger_event(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
