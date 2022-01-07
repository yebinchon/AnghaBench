; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-corsair.c_corsair_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.hid_device_id = type { i64 }
%struct.corsair_drvdata = type { i64 }
%struct.usb_interface = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"parse failed\0A\00", align 1
@HID_CONNECT_DEFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"hw start failed\0A\00", align 1
@CORSAIR_USE_K90_MACRO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to initialize K90 macro functions.\0A\00", align 1
@CORSAIR_USE_K90_BACKLIGHT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Failed to initialize K90 backlight.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_device_id*)* @corsair_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @corsair_probe(%struct.hid_device* %0, %struct.hid_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hid_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.corsair_drvdata*, align 8
  %9 = alloca %struct.usb_interface*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hid_device_id* %1, %struct.hid_device_id** %5, align 8
  %10 = load %struct.hid_device_id*, %struct.hid_device_id** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device_id, %struct.hid_device_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %14 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.usb_interface* @to_usb_interface(i32 %16)
  store %struct.usb_interface* %17, %struct.usb_interface** %9, align 8
  %18 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %19 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %18, i32 0, i32 0
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.corsair_drvdata* @devm_kzalloc(%struct.TYPE_6__* %19, i32 8, i32 %20)
  store %struct.corsair_drvdata* %21, %struct.corsair_drvdata** %8, align 8
  %22 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %8, align 8
  %23 = icmp eq %struct.corsair_drvdata* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %90

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %8, align 8
  %30 = getelementptr inbounds %struct.corsair_drvdata, %struct.corsair_drvdata* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %32 = load %struct.corsair_drvdata*, %struct.corsair_drvdata** %8, align 8
  %33 = call i32 @hid_set_drvdata(%struct.hid_device* %31, %struct.corsair_drvdata* %32)
  %34 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %35 = call i32 @hid_parse(%struct.hid_device* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %40 = call i32 @hid_err(%struct.hid_device* %39, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %90

42:                                               ; preds = %27
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = load i32, i32* @HID_CONNECT_DEFAULT, align 4
  %45 = call i32 @hid_hw_start(%struct.hid_device* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %50 = call i32 @hid_err(%struct.hid_device* %49, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %90

52:                                               ; preds = %42
  %53 = load %struct.usb_interface*, %struct.usb_interface** %9, align 8
  %54 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %52
  %61 = load i64, i64* %7, align 8
  %62 = load i64, i64* @CORSAIR_USE_K90_MACRO, align 8
  %63 = and i64 %61, %62
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %67 = call i32 @k90_init_macro_functions(%struct.hid_device* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %72 = call i32 @hid_warn(%struct.hid_device* %71, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %65
  br label %74

74:                                               ; preds = %73, %60
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @CORSAIR_USE_K90_BACKLIGHT, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %74
  %80 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %81 = call i32 @k90_init_backlight(%struct.hid_device* %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %86 = call i32 @hid_warn(%struct.hid_device* %85, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %74
  br label %89

89:                                               ; preds = %88, %52
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %48, %38, %24
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.usb_interface* @to_usb_interface(i32) #1

declare dso_local %struct.corsair_drvdata* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hid_set_drvdata(%struct.hid_device*, %struct.corsair_drvdata*) #1

declare dso_local i32 @hid_parse(%struct.hid_device*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*) #1

declare dso_local i32 @hid_hw_start(%struct.hid_device*, i32) #1

declare dso_local i32 @k90_init_macro_functions(%struct.hid_device*) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*) #1

declare dso_local i32 @k90_init_backlight(%struct.hid_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
