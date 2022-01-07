; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_get_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-multitouch.c_mt_get_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32, i32 }
%struct.hid_report = type { i32 }

@HID_QUIRK_NO_INIT_REPORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to fetch feature %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to report feature\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hid_device*, %struct.hid_report*)* @mt_get_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt_get_feature(%struct.hid_device* %0, %struct.hid_report* %1) #0 {
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  store %struct.hid_report* %1, %struct.hid_report** %4, align 8
  %8 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %9 = call i32 @hid_report_len(%struct.hid_report* %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HID_QUIRK_NO_INIT_REPORTS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @hid_alloc_report_buf(%struct.hid_report* %18, i32 %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %59

24:                                               ; preds = %17
  %25 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %26 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %27 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %32 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %33 = call i32 @hid_hw_raw_request(%struct.hid_device* %25, i32 %28, i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 1
  %39 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  %40 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32*, i8*, ...) @dev_warn(i32* %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %56

43:                                               ; preds = %24
  %44 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %45 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @hid_report_raw_event(%struct.hid_device* %44, i32 %45, i32* %46, i32 %47, i32 0)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %43
  %52 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %53 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %52, i32 0, i32 1
  %54 = call i32 (i32*, i8*, ...) @dev_warn(i32* %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %43
  br label %56

56:                                               ; preds = %55, %36
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @kfree(i32* %57)
  br label %59

59:                                               ; preds = %56, %23, %16
  ret void
}

declare dso_local i32 @hid_report_len(%struct.hid_report*) #1

declare dso_local i32* @hid_alloc_report_buf(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @hid_report_raw_event(%struct.hid_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
