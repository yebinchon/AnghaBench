; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_mute_led_set_brigtness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_mute_led_set_brigtness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.hid_device = type { i32 }
%struct.elan_drvdata = type { i8* }

@ELAN_LED_REPORT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ELAN_MUTE_LED_REPORT = common dso_local global i8 0, align 1
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to set mute led brightness: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i32)* @elan_mute_led_set_brigtness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_mute_led_set_brigtness(%struct.led_classdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.led_classdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.hid_device*, align 8
  %10 = alloca %struct.elan_drvdata*, align 8
  %11 = alloca i8*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.led_classdev*, %struct.led_classdev** %4, align 8
  %13 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %8, align 8
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = call %struct.hid_device* @to_hid_device(%struct.device* %17)
  store %struct.hid_device* %18, %struct.hid_device** %9, align 8
  %19 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %20 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %19)
  store %struct.elan_drvdata* %20, %struct.elan_drvdata** %10, align 8
  %21 = load i32, i32* @ELAN_LED_REPORT_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  store i8* %23, i8** %11, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %69

29:                                               ; preds = %2
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  store i8* %36, i8** %7, align 8
  %37 = load i8, i8* @ELAN_MUTE_LED_REPORT, align 1
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  store i8 %37, i8* %39, align 1
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 2, i8* %41, align 1
  %42 = load i8*, i8** %7, align 8
  %43 = ptrtoint i8* %42 to i8
  %44 = load i8*, i8** %11, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %43, i8* %45, align 1
  %46 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %11, align 8
  %51 = load i32, i32* @ELAN_LED_REPORT_SIZE, align 4
  %52 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %53 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %54 = call i32 @hid_hw_raw_request(%struct.hid_device* %46, i8 zeroext %49, i8* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @kfree(i8* %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ELAN_LED_REPORT_SIZE, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %29
  %61 = load %struct.hid_device*, %struct.hid_device** %9, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @hid_err(%struct.hid_device* %61, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %29
  %66 = load i8*, i8** %7, align 8
  %67 = load %struct.elan_drvdata*, %struct.elan_drvdata** %10, align 8
  %68 = getelementptr inbounds %struct.elan_drvdata, %struct.elan_drvdata* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %60, %26
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.hid_device* @to_hid_device(%struct.device*) #1

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i8 zeroext, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
