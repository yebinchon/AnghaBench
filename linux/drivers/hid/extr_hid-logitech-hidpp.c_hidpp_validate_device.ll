; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_validate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_hid-logitech-hidpp.c_hidpp_validate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.hidpp_device = type { i32 }

@REPORT_ID_HIDPP_SHORT = common dso_local global i32 0, align 4
@HIDPP_REPORT_SHORT_LENGTH = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_LONG = common dso_local global i32 0, align 4
@HIDPP_REPORT_LONG_LENGTH = common dso_local global i32 0, align 4
@REPORT_ID_HIDPP_VERY_LONG = common dso_local global i32 0, align 4
@HIDPP_REPORT_VERY_LONG_MAX_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"not enough values in hidpp report %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*)* @hidpp_validate_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hidpp_validate_device(%struct.hid_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hid_device*, align 8
  %4 = alloca %struct.hidpp_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hid_device* %0, %struct.hid_device** %3, align 8
  %8 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %9 = call %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device* %8)
  store %struct.hidpp_device* %9, %struct.hidpp_device** %4, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @REPORT_ID_HIDPP_SHORT, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hidpp_get_report_length(%struct.hid_device* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @HIDPP_REPORT_SHORT_LENGTH, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %63

21:                                               ; preds = %16
  %22 = load i32, i32* %7, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = load i32, i32* @REPORT_ID_HIDPP_LONG, align 4
  store i32 %25, i32* %5, align 4
  %26 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @hidpp_get_report_length(%struct.hid_device* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %63

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %24
  %40 = load i32, i32* @REPORT_ID_HIDPP_VERY_LONG, align 4
  store i32 %40, i32* %5, align 4
  %41 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @hidpp_get_report_length(%struct.hid_device* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %39
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @HIDPP_REPORT_LONG_LENGTH, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @HIDPP_REPORT_VERY_LONG_MAX_LENGTH, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %50, %46
  br label %63

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.hidpp_device*, %struct.hidpp_device** %4, align 8
  %60 = getelementptr inbounds %struct.hidpp_device, %struct.hidpp_device* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %39
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %67

63:                                               ; preds = %54, %35, %20
  %64 = load %struct.hid_device*, %struct.hid_device** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @hid_warn(%struct.hid_device* %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %65)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %61
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.hidpp_device* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @hidpp_get_report_length(%struct.hid_device*, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
