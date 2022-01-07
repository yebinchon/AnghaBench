; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_set_device_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_set_device_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { %struct.hid_report** }
%struct.hid_report = type { i32 }
%struct.wacom_wac = type { i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@WAC_MSG_RETRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.wacom_wac*)* @wacom_set_device_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_set_device_mode(%struct.hid_device* %0, %struct.wacom_wac* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca %struct.wacom_wac*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.hid_report*, align 8
  %8 = alloca %struct.hid_report_enum*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %4, align 8
  store %struct.wacom_wac* %1, %struct.wacom_wac** %5, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %15 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %103

19:                                               ; preds = %2
  %20 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %21 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %20, i32 0, i32 0
  %22 = load %struct.hid_report_enum*, %struct.hid_report_enum** %21, align 8
  %23 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %24 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %22, i64 %23
  store %struct.hid_report_enum* %24, %struct.hid_report_enum** %8, align 8
  %25 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %26 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %25, i32 0, i32 0
  %27 = load %struct.hid_report**, %struct.hid_report*** %26, align 8
  %28 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %29 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %27, i64 %30
  %32 = load %struct.hid_report*, %struct.hid_report** %31, align 8
  store %struct.hid_report* %32, %struct.hid_report** %7, align 8
  %33 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %34 = icmp ne %struct.hid_report* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %19
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %103

38:                                               ; preds = %19
  %39 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i64* @hid_alloc_report_buf(%struct.hid_report* %39, i32 %40)
  store i64* %41, i64** %6, align 8
  %42 = load i64*, i64** %6, align 8
  %43 = icmp ne i64* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %103

47:                                               ; preds = %38
  %48 = load %struct.hid_report*, %struct.hid_report** %7, align 8
  %49 = call i32 @hid_report_len(%struct.hid_report* %48)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %91, %47
  %51 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %52 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %57 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %62 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @wacom_set_report(%struct.hid_device* %61, i64 %62, i64* %63, i32 %64, i32 1)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %50
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = load i64, i64* @HID_FEATURE_REPORT, align 8
  %71 = load i64*, i64** %6, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @wacom_get_report(%struct.hid_device* %69, i64 %70, i64* %71, i32 %72, i32 1)
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %68, %50
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %10, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = load i64*, i64** %6, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.wacom_wac*, %struct.wacom_wac** %5, align 8
  %83 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* @WAC_MSG_RETRIES, align 4
  %90 = icmp slt i32 %87, %89
  br label %91

91:                                               ; preds = %86, %78, %75
  %92 = phi i1 [ false, %78 ], [ false, %75 ], [ %90, %86 ]
  br i1 %92, label %50, label %93

93:                                               ; preds = %91
  %94 = load i64*, i64** %6, align 8
  %95 = call i32 @kfree(i64* %94)
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  br label %101

100:                                              ; preds = %93
  br label %101

101:                                              ; preds = %100, %98
  %102 = phi i32 [ %99, %98 ], [ 0, %100 ]
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %44, %35, %18
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i64* @hid_alloc_report_buf(%struct.hid_report*, i32) #1

declare dso_local i32 @hid_report_len(%struct.hid_report*) #1

declare dso_local i32 @wacom_set_report(%struct.hid_device*, i64, i64*, i32, i32) #1

declare dso_local i32 @wacom_get_report(%struct.hid_device*, i64, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
