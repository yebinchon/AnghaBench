; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hid_report = type { i32 }
%struct.elan_drvdata = type { i32 }

@ELAN_SINGLE_FINGER = common dso_local global i64 0, align 8
@ELAN_MT_FIRST_FINGER = common dso_local global i64 0, align 8
@ELAN_MT_SECOND_FINGER = common dso_local global i64 0, align 8
@ELAN_INPUT_REPORT_SIZE = common dso_local global i32 0, align 4
@ELAN_MT_I2C = common dso_local global i64 0, align 8
@ELAN_I2C_REPORT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i64*, i32)* @elan_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hid_device*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.elan_drvdata*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %6, align 8
  store %struct.hid_report* %1, %struct.hid_report** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %12 = call %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.elan_drvdata* %12, %struct.elan_drvdata** %10, align 8
  %13 = load %struct.hid_device*, %struct.hid_device** %6, align 8
  %14 = call i64 @is_not_elan_touchpad(%struct.hid_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

17:                                               ; preds = %4
  %18 = load i64*, i64** %8, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ELAN_SINGLE_FINGER, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load i64*, i64** %8, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ELAN_MT_FIRST_FINGER, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i64*, i64** %8, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ELAN_MT_SECOND_FINGER, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29, %23, %17
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @ELAN_INPUT_REPORT_SIZE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.elan_drvdata*, %struct.elan_drvdata** %10, align 8
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @elan_usb_report_input(%struct.elan_drvdata* %40, i64* %41)
  store i32 1, i32* %5, align 4
  br label %59

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %29
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ELAN_MT_I2C, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @ELAN_I2C_REPORT_SIZE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load %struct.elan_drvdata*, %struct.elan_drvdata** %10, align 8
  %56 = load i64*, i64** %8, align 8
  %57 = call i32 @elan_i2c_report_input(%struct.elan_drvdata* %55, i64* %56)
  store i32 1, i32* %5, align 4
  br label %59

58:                                               ; preds = %50, %44
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %54, %39, %16
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local %struct.elan_drvdata* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i64 @is_not_elan_touchpad(%struct.hid_device*) #1

declare dso_local i32 @elan_usb_report_input(%struct.elan_drvdata*, i64*) #1

declare dso_local i32 @elan_i2c_report_input(%struct.elan_drvdata*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
