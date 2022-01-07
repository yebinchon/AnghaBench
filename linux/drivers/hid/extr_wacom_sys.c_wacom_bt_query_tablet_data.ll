; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_bt_query_tablet_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_sys.c_wacom_bt_query_tablet_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_device = type { i32 }
%struct.wacom_features = type { i32 }
%struct.wacom = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HID_FEATURE_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to poke device, command %d, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hid_device*, i32, %struct.wacom_features*)* @wacom_bt_query_tablet_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wacom_bt_query_tablet_data(%struct.hid_device* %0, i32 %1, %struct.wacom_features* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wacom_features*, align 8
  %8 = alloca %struct.wacom*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wacom_features* %2, %struct.wacom_features** %7, align 8
  %11 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %12 = call %struct.wacom* @hid_get_drvdata(%struct.hid_device* %11)
  store %struct.wacom* %12, %struct.wacom** %8, align 8
  %13 = load %struct.wacom_features*, %struct.wacom_features** %7, align 8
  %14 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %84 [
    i32 129, label %16
    i32 128, label %50
  ]

16:                                               ; preds = %3
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 3, i32* %17, align 4
  %18 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %18, align 4
  %19 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %20 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %22 = call i32 @wacom_set_report(%struct.hid_device* %19, i32 %20, i32* %21, i32 2, i32 3)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %16
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 5, i32 6
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 %29, i32* %30, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %33 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %35 = call i32 @wacom_set_report(%struct.hid_device* %32, i32 %33, i32* %34, i32 2, i32 3)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %25
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.wacom*, %struct.wacom** %8, align 8
  %41 = getelementptr inbounds %struct.wacom, %struct.wacom* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  store i32 0, i32* %4, align 4
  br label %85

43:                                               ; preds = %25
  br label %44

44:                                               ; preds = %43, %16
  %45 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @hid_warn(%struct.hid_device* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %84

50:                                               ; preds = %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.wacom*, %struct.wacom** %8, align 8
  %55 = getelementptr inbounds %struct.wacom, %struct.wacom* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -33
  store i32 %58, i32* %56, align 4
  br label %65

59:                                               ; preds = %50
  %60 = load %struct.wacom*, %struct.wacom** %8, align 8
  %61 = getelementptr inbounds %struct.wacom, %struct.wacom* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, 32
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %53
  %66 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  store i32 3, i32* %66, align 4
  %67 = load %struct.wacom*, %struct.wacom** %8, align 8
  %68 = getelementptr inbounds %struct.wacom, %struct.wacom* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %73 = load i32, i32* @HID_FEATURE_REPORT, align 4
  %74 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %75 = call i32 @wacom_set_report(%struct.hid_device* %72, i32 %73, i32* %74, i32 2, i32 1)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %65
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.wacom*, %struct.wacom** %8, align 8
  %81 = getelementptr inbounds %struct.wacom, %struct.wacom* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %65
  br label %84

84:                                               ; preds = %3, %83, %44
  store i32 0, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %38
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.wacom* @hid_get_drvdata(%struct.hid_device*) #1

declare dso_local i32 @wacom_set_report(%struct.hid_device*, i32, i32*, i32, i32) #1

declare dso_local i32 @hid_warn(%struct.hid_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
