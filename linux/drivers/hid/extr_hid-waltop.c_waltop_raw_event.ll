; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-waltop.c_waltop_raw_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-waltop.c_waltop_raw_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i64 }
%struct.hid_report = type { i64, i32 }

@HID_INPUT_REPORT = common dso_local global i64 0, align 8
@USB_DEVICE_ID_WALTOP_SIRIUS_BATTERY_FREE_TABLET = common dso_local global i64 0, align 8
@waltop_raw_event.tilt_to_radians = internal constant [19 x i32] [i32 0, i32 5, i32 10, i32 14, i32 19, i32 24, i32 29, i32 34, i32 40, i32 45, i32 50, i32 56, i32 62, i32 68, i32 74, i32 81, i32 88, i32 96, i32 105], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, %struct.hid_report*, i32*, i32)* @waltop_raw_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waltop_raw_event(%struct.hid_device* %0, %struct.hid_report* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca %struct.hid_report*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store %struct.hid_report* %1, %struct.hid_report** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %14 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HID_INPUT_REPORT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %38

18:                                               ; preds = %4
  %19 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %20 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 16
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %24, 8
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 6
  store i32 0, i32* %34, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 7
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %23, %18, %4
  %39 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %40 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @USB_DEVICE_ID_WALTOP_SIRIUS_BATTERY_FREE_TABLET, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %113

44:                                               ; preds = %38
  %45 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %46 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @HID_INPUT_REPORT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %113

50:                                               ; preds = %44
  %51 = load %struct.hid_report*, %struct.hid_report** %6, align 8
  %52 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %113

55:                                               ; preds = %50
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 10
  br i1 %57, label %58, label %113

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 8
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 9
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp sge i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 -1
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sge i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 -1
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %10, align 4
  %78 = mul nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* %12, align 4
  %80 = mul nsw i32 %79, -1
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 0))
  %83 = sub nsw i32 %82, 1
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %58
  %86 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 0))
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %58
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 0))
  %91 = sub nsw i32 %90, 1
  %92 = icmp sgt i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 0))
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %11, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32*, i32** %7, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [19 x i32], [19 x i32]* @waltop_raw_event.tilt_to_radians, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %12, align 4
  %110 = mul nsw i32 %108, %109
  %111 = load i32*, i32** %7, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %96, %55, %50, %44, %38
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
