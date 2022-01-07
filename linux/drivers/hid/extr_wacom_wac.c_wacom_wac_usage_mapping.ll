; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_usage_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_wac_usage_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_field = type { i32 }
%struct.hid_usage = type { i32 }
%struct.wacom = type { %struct.wacom_wac }
%struct.wacom_wac = type { %struct.wacom_features }
%struct.wacom_features = type { i32 }

@WACOM_DEVICETYPE_DIRECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wacom_wac_usage_mapping(%struct.hid_device* %0, %struct.hid_field* %1, %struct.hid_usage* %2) #0 {
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_field*, align 8
  %6 = alloca %struct.hid_usage*, align 8
  %7 = alloca %struct.wacom*, align 8
  %8 = alloca %struct.wacom_wac*, align 8
  %9 = alloca %struct.wacom_features*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_field* %1, %struct.hid_field** %5, align 8
  store %struct.hid_usage* %2, %struct.hid_usage** %6, align 8
  %10 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %11 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %10)
  store %struct.wacom* %11, %struct.wacom** %7, align 8
  %12 = load %struct.wacom*, %struct.wacom** %7, align 8
  %13 = getelementptr inbounds %struct.wacom, %struct.wacom* %12, i32 0, i32 0
  store %struct.wacom_wac* %13, %struct.wacom_wac** %8, align 8
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %8, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 0
  store %struct.wacom_features* %15, %struct.wacom_features** %9, align 8
  %16 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %17 = call i64 @WACOM_DIRECT_DEVICE(%struct.hid_field* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load i32, i32* @WACOM_DEVICETYPE_DIRECT, align 4
  %21 = load %struct.wacom_features*, %struct.wacom_features** %9, align 8
  %22 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %3
  %26 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %27 = call i64 @WACOM_BATTERY_USAGE(%struct.hid_usage* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %31 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %32 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %33 = call i32 @wacom_wac_battery_usage_mapping(%struct.hid_device* %30, %struct.hid_field* %31, %struct.hid_usage* %32)
  br label %64

34:                                               ; preds = %25
  %35 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %36 = call i64 @WACOM_PAD_FIELD(%struct.hid_field* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %41 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %42 = call i32 @wacom_wac_pad_usage_mapping(%struct.hid_device* %39, %struct.hid_field* %40, %struct.hid_usage* %41)
  br label %63

43:                                               ; preds = %34
  %44 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %45 = call i64 @WACOM_PEN_FIELD(%struct.hid_field* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %50 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %51 = call i32 @wacom_wac_pen_usage_mapping(%struct.hid_device* %48, %struct.hid_field* %49, %struct.hid_usage* %50)
  br label %62

52:                                               ; preds = %43
  %53 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %54 = call i64 @WACOM_FINGER_FIELD(%struct.hid_field* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %58 = load %struct.hid_field*, %struct.hid_field** %5, align 8
  %59 = load %struct.hid_usage*, %struct.hid_usage** %6, align 8
  %60 = call i32 @wacom_wac_finger_usage_mapping(%struct.hid_device* %57, %struct.hid_field* %58, %struct.hid_usage* %59)
  br label %61

61:                                               ; preds = %56, %52
  br label %62

62:                                               ; preds = %61, %47
  br label %63

63:                                               ; preds = %62, %38
  br label %64

64:                                               ; preds = %63, %29
  ret void
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @WACOM_DIRECT_DEVICE(%struct.hid_field*) #1

declare dso_local i64 @WACOM_BATTERY_USAGE(%struct.hid_usage*) #1

declare dso_local i32 @wacom_wac_battery_usage_mapping(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

declare dso_local i64 @WACOM_PAD_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_pad_usage_mapping(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

declare dso_local i64 @WACOM_PEN_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_pen_usage_mapping(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

declare dso_local i64 @WACOM_FINGER_FIELD(%struct.hid_field*) #1

declare dso_local i32 @wacom_wac_finger_usage_mapping(%struct.hid_device*, %struct.hid_field*, %struct.hid_usage*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
