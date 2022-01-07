; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_get_device_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-elan.c_elan_get_device_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }

@ELAN_FEATURE_REPORT = common dso_local global i8 0, align 1
@ELAN_FEATURE_SIZE = common dso_local global i32 0, align 4
@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@HID_REQ_SET_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Set report error for parm %d: %d\0A\00", align 1
@HID_REQ_GET_REPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Get report error for parm %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i8*, i8)* @elan_get_device_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_get_device_param(%struct.hid_device* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %9 = load i8, i8* @ELAN_FEATURE_REPORT, align 1
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  store i8 %9, i8* %11, align 1
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 5, i8* %13, align 1
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  store i8 3, i8* %15, align 1
  %16 = load i8, i8* %7, align 1
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 %16, i8* %18, align 1
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 1, i8* %20, align 1
  %21 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %22 = load i8, i8* @ELAN_FEATURE_REPORT, align 1
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @ELAN_FEATURE_SIZE, align 4
  %25 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %26 = load i32, i32* @HID_REQ_SET_REPORT, align 4
  %27 = call i32 @hid_hw_raw_request(%struct.hid_device* %21, i8 zeroext %22, i8* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ELAN_FEATURE_SIZE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %3
  %32 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %33 = load i8, i8* %7, align 1
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @hid_err(%struct.hid_device* %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8 zeroext %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  store i32 %36, i32* %4, align 4
  br label %55

37:                                               ; preds = %3
  %38 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %39 = load i8, i8* @ELAN_FEATURE_REPORT, align 1
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @ELAN_FEATURE_SIZE, align 4
  %42 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %43 = load i32, i32* @HID_REQ_GET_REPORT, align 4
  %44 = call i32 @hid_hw_raw_request(%struct.hid_device* %38, i8 zeroext %39, i8* %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @ELAN_FEATURE_SIZE, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %37
  %49 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %50 = load i8, i8* %7, align 1
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @hid_err(%struct.hid_device* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8 zeroext %50, i32 %51)
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %48, %31
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @hid_hw_raw_request(%struct.hid_device*, i8 zeroext, i8*, i32, i32, i32) #1

declare dso_local i32 @hid_err(%struct.hid_device*, i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
