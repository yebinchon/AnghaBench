; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_backlight.c_picolcd_init_backlight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-picolcd_backlight.c_picolcd_init_backlight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.picolcd_data = type { i32, %struct.backlight_device*, %struct.TYPE_4__* }
%struct.backlight_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hid_report = type { i32, %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32, i32 }
%struct.backlight_properties = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported BRIGHTNESS report\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BACKLIGHT_RAW = common dso_local global i32 0, align 4
@picolcd_blops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to register backlight\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @picolcd_init_backlight(%struct.picolcd_data* %0, %struct.hid_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.picolcd_data*, align 8
  %5 = alloca %struct.hid_report*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.backlight_device*, align 8
  %8 = alloca %struct.backlight_properties, align 4
  store %struct.picolcd_data* %0, %struct.picolcd_data** %4, align 8
  store %struct.hid_report* %1, %struct.hid_report** %5, align 8
  %9 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %10 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %14 = icmp ne %struct.hid_report* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %75

18:                                               ; preds = %2
  %19 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 1
  br i1 %22, label %41, label %23

23:                                               ; preds = %18
  %24 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %25 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 1
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %struct.hid_report*, %struct.hid_report** %5, align 8
  %34 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 8
  br i1 %40, label %41, label %46

41:                                               ; preds = %32, %23, %18
  %42 = load %struct.device*, %struct.device** %6, align 8
  %43 = call i32 @dev_err(%struct.device* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %75

46:                                               ; preds = %32
  %47 = call i32 @memset(%struct.backlight_properties* %8, i32 0, i32 8)
  %48 = load i32, i32* @BACKLIGHT_RAW, align 4
  %49 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.backlight_properties, %struct.backlight_properties* %8, i32 0, i32 0
  store i32 255, i32* %50, align 4
  %51 = load %struct.device*, %struct.device** %6, align 8
  %52 = call i32 @dev_name(%struct.device* %51)
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %55 = call %struct.backlight_device* @backlight_device_register(i32 %52, %struct.device* %53, %struct.picolcd_data* %54, i32* @picolcd_blops, %struct.backlight_properties* %8)
  store %struct.backlight_device* %55, %struct.backlight_device** %7, align 8
  %56 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %57 = call i64 @IS_ERR(%struct.backlight_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %46
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_err(%struct.device* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %63 = call i32 @PTR_ERR(%struct.backlight_device* %62)
  store i32 %63, i32* %3, align 4
  br label %75

64:                                               ; preds = %46
  %65 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %66 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i32 255, i32* %67, align 4
  %68 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %69 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %68, i32 0, i32 0
  store i32 255, i32* %69, align 8
  %70 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %71 = load %struct.picolcd_data*, %struct.picolcd_data** %4, align 8
  %72 = getelementptr inbounds %struct.picolcd_data, %struct.picolcd_data* %71, i32 0, i32 1
  store %struct.backlight_device* %70, %struct.backlight_device** %72, align 8
  %73 = load %struct.backlight_device*, %struct.backlight_device** %7, align 8
  %74 = call i32 @picolcd_set_brightness(%struct.backlight_device* %73)
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %59, %41, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @memset(%struct.backlight_properties*, i32, i32) #1

declare dso_local %struct.backlight_device* @backlight_device_register(i32, %struct.device*, %struct.picolcd_data*, i32*, %struct.backlight_properties*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i64 @IS_ERR(%struct.backlight_device*) #1

declare dso_local i32 @PTR_ERR(%struct.backlight_device*) #1

declare dso_local i32 @picolcd_set_brightness(%struct.backlight_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
