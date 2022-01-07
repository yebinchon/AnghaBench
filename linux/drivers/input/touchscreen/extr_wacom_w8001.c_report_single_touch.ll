; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_report_single_touch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_report_single_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.w8001_coord = type { i32, i32, i64 }

@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_TOOL_FINGER = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w8001*, %struct.w8001_coord*)* @report_single_touch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_single_touch(%struct.w8001* %0, %struct.w8001_coord* %1) #0 {
  %3 = alloca %struct.w8001*, align 8
  %4 = alloca %struct.w8001_coord*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.w8001* %0, %struct.w8001** %3, align 8
  store %struct.w8001_coord* %1, %struct.w8001_coord** %4, align 8
  %8 = load %struct.w8001*, %struct.w8001** %3, align 8
  %9 = getelementptr inbounds %struct.w8001, %struct.w8001* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %5, align 8
  %11 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %12 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %15 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.w8001*, %struct.w8001** %3, align 8
  %18 = call i32 @scale_touch_coordinates(%struct.w8001* %17, i32* %6, i32* %7)
  %19 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %20 = load i32, i32* @ABS_X, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @input_report_abs(%struct.input_dev* %19, i32 %20, i32 %21)
  %23 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %24 = load i32, i32* @ABS_Y, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @input_report_abs(%struct.input_dev* %23, i32 %24, i32 %25)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = load i32, i32* @BTN_TOUCH, align 4
  %29 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %30 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @input_report_key(%struct.input_dev* %27, i32 %28, i64 %31)
  %33 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %34 = call i32 @input_sync(%struct.input_dev* %33)
  %35 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %36 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %2
  %40 = load i32, i32* @BTN_TOOL_FINGER, align 4
  br label %43

41:                                               ; preds = %2
  %42 = load i32, i32* @KEY_RESERVED, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load %struct.w8001*, %struct.w8001** %3, align 8
  %46 = getelementptr inbounds %struct.w8001, %struct.w8001* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  ret void
}

declare dso_local i32 @scale_touch_coordinates(%struct.w8001*, i32*, i32*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
