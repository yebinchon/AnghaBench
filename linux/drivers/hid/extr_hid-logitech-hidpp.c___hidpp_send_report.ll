; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c___hidpp_send_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c___hidpp_send_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_report = type { i32, i32 }
%struct.hidpp_device = type { i32, i32 }

@HIDPP_REPORT_SHORT_LENGTH = common dso_local global i32 0, align 4
@HIDPP_REPORT_LONG_LENGTH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@HIDPP_QUIRK_FORCE_OUTPUT_REPORTS = common dso_local global i32 0, align 4
@HID_OUTPUT_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hidpp_report*)* @__hidpp_send_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__hidpp_send_report(%struct.hid_device* %0, %struct.hidpp_report* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.hidpp_report*, align 8
  %6 = alloca %struct.hidpp_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.hidpp_report* %1, %struct.hidpp_report** %5, align 8
  %9 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %10 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %9)
  store %struct.hidpp_device* %10, %struct.hidpp_device** %6, align 8
  %11 = load %struct.hidpp_report*, %struct.hidpp_report** %5, align 8
  %12 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 129, label %14
    i32 130, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  store i32 %15, i32* %7, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  store i32 %17, i32* %7, align 4
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.hidpp_device*, %struct.hidpp_device** %6, align 8
  %20 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %57

25:                                               ; preds = %18, %16, %14
  %26 = load %struct.hidpp_report*, %struct.hidpp_report** %5, align 8
  %27 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %26, i32 0, i32 1
  store i32 255, i32* %27, align 4
  %28 = load %struct.hidpp_device*, %struct.hidpp_device** %6, align 8
  %29 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HIDPP_QUIRK_FORCE_OUTPUT_REPORTS, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %36 = load %struct.hidpp_report*, %struct.hidpp_report** %5, align 8
  %37 = bitcast %struct.hidpp_report* %36 to i32*
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @hid_hw_output_report(%struct.hid_device* %35, i32* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %25
  %41 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %42 = load %struct.hidpp_report*, %struct.hidpp_report** %5, align 8
  %43 = getelementptr inbounds %struct.hidpp_report, %struct.hidpp_report* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hidpp_report*, %struct.hidpp_report** %5, align 8
  %46 = bitcast %struct.hidpp_report* %45 to i32*
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @HID_OUTPUT_REPORT, align 4
  %49 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %50 = call i32 @hid_hw_raw_request(%struct.hid_device* %41, i32 %44, i32* %46, i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %40, %34
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %52, %53
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 -1
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %22
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hid_hw_output_report(%struct.hid_device*, i32*, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
