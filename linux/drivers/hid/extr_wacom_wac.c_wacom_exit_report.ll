; ModuleID = '/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_exit_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hid/extr_wacom_wac.c_wacom_exit_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wacom_wac = type { i8*, i64*, i64*, i32*, %struct.wacom_features, %struct.input_dev* }
%struct.wacom_features = type { i64 }
%struct.input_dev = type { i32 }

@INTUOS = common dso_local global i64 0, align 8
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_DISTANCE = common dso_local global i32 0, align 4
@ABS_TILT_X = common dso_local global i32 0, align 4
@ABS_TILT_Y = common dso_local global i32 0, align 4
@BTN_TOOL_MOUSE = common dso_local global i64 0, align 8
@BTN_LEFT = common dso_local global i64 0, align 8
@BTN_MIDDLE = common dso_local global i64 0, align 8
@BTN_RIGHT = common dso_local global i64 0, align 8
@BTN_SIDE = common dso_local global i64 0, align 8
@BTN_EXTRA = common dso_local global i64 0, align 8
@ABS_THROTTLE = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i64 0, align 8
@BTN_STYLUS2 = common dso_local global i64 0, align 8
@BTN_TOUCH = common dso_local global i64 0, align 8
@ABS_WHEEL = common dso_local global i32 0, align 4
@INTUOS3S = common dso_local global i64 0, align 8
@ABS_Z = common dso_local global i32 0, align 4
@ABS_MISC = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@MSC_SERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wacom_wac*)* @wacom_exit_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wacom_exit_report(%struct.wacom_wac* %0) #0 {
  %2 = alloca %struct.wacom_wac*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.wacom_features*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.wacom_wac* %0, %struct.wacom_wac** %2, align 8
  %7 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %8 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %7, i32 0, i32 5
  %9 = load %struct.input_dev*, %struct.input_dev** %8, align 8
  store %struct.input_dev* %9, %struct.input_dev** %3, align 8
  %10 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %11 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %10, i32 0, i32 4
  store %struct.wacom_features* %11, %struct.wacom_features** %4, align 8
  %12 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %13 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %5, align 8
  %15 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %16 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @INTUOS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 1
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %20
  %28 = phi i32 [ %25, %20 ], [ 0, %26 ]
  store i32 %28, i32* %6, align 4
  %29 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %30 = load i32, i32* @ABS_X, align 4
  %31 = call i32 @input_report_abs(%struct.input_dev* %29, i32 %30, i32 0)
  %32 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %33 = load i32, i32* @ABS_Y, align 4
  %34 = call i32 @input_report_abs(%struct.input_dev* %32, i32 %33, i32 0)
  %35 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %36 = load i32, i32* @ABS_DISTANCE, align 4
  %37 = call i32 @input_report_abs(%struct.input_dev* %35, i32 %36, i32 0)
  %38 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %39 = load i32, i32* @ABS_TILT_X, align 4
  %40 = call i32 @input_report_abs(%struct.input_dev* %38, i32 %39, i32 0)
  %41 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %42 = load i32, i32* @ABS_TILT_Y, align 4
  %43 = call i32 @input_report_abs(%struct.input_dev* %41, i32 %42, i32 0)
  %44 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %45 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @BTN_TOOL_MOUSE, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %27
  %54 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %55 = load i64, i64* @BTN_LEFT, align 8
  %56 = call i32 @input_report_key(%struct.input_dev* %54, i64 %55, i32 0)
  %57 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %58 = load i64, i64* @BTN_MIDDLE, align 8
  %59 = call i32 @input_report_key(%struct.input_dev* %57, i64 %58, i32 0)
  %60 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %61 = load i64, i64* @BTN_RIGHT, align 8
  %62 = call i32 @input_report_key(%struct.input_dev* %60, i64 %61, i32 0)
  %63 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %64 = load i64, i64* @BTN_SIDE, align 8
  %65 = call i32 @input_report_key(%struct.input_dev* %63, i64 %64, i32 0)
  %66 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %67 = load i64, i64* @BTN_EXTRA, align 8
  %68 = call i32 @input_report_key(%struct.input_dev* %66, i64 %67, i32 0)
  %69 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %70 = load i32, i32* @ABS_THROTTLE, align 4
  %71 = call i32 @input_report_abs(%struct.input_dev* %69, i32 %70, i32 0)
  %72 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %73 = load i32, i32* @ABS_RZ, align 4
  %74 = call i32 @input_report_abs(%struct.input_dev* %72, i32 %73, i32 0)
  br label %101

75:                                               ; preds = %27
  %76 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %77 = load i32, i32* @ABS_PRESSURE, align 4
  %78 = call i32 @input_report_abs(%struct.input_dev* %76, i32 %77, i32 0)
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i64, i64* @BTN_STYLUS, align 8
  %81 = call i32 @input_report_key(%struct.input_dev* %79, i64 %80, i32 0)
  %82 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %83 = load i64, i64* @BTN_STYLUS2, align 8
  %84 = call i32 @input_report_key(%struct.input_dev* %82, i64 %83, i32 0)
  %85 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %86 = load i64, i64* @BTN_TOUCH, align 8
  %87 = call i32 @input_report_key(%struct.input_dev* %85, i64 %86, i32 0)
  %88 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %89 = load i32, i32* @ABS_WHEEL, align 4
  %90 = call i32 @input_report_abs(%struct.input_dev* %88, i32 %89, i32 0)
  %91 = load %struct.wacom_features*, %struct.wacom_features** %4, align 8
  %92 = getelementptr inbounds %struct.wacom_features, %struct.wacom_features* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @INTUOS3S, align 8
  %95 = icmp sge i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %75
  %97 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %98 = load i32, i32* @ABS_Z, align 4
  %99 = call i32 @input_report_abs(%struct.input_dev* %97, i32 %98, i32 0)
  br label %100

100:                                              ; preds = %96, %75
  br label %101

101:                                              ; preds = %100, %53
  %102 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %103 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %104 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @input_report_key(%struct.input_dev* %102, i64 %109, i32 0)
  %111 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %112 = load i32, i32* @ABS_MISC, align 4
  %113 = call i32 @input_report_abs(%struct.input_dev* %111, i32 %112, i32 0)
  %114 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %115 = load i32, i32* @EV_MSC, align 4
  %116 = load i32, i32* @MSC_SERIAL, align 4
  %117 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %118 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @input_event(%struct.input_dev* %114, i32 %115, i32 %116, i32 %123)
  %125 = load %struct.wacom_wac*, %struct.wacom_wac** %2, align 8
  %126 = getelementptr inbounds %struct.wacom_wac, %struct.wacom_wac* %125, i32 0, i32 2
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  store i64 0, i64* %130, align 8
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i64, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
