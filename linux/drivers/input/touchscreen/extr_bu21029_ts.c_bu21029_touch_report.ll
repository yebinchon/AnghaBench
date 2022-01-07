; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21029_ts_data = type { i32, i32, i32 }

@ABS_PRESSURE = common dso_local global i32 0, align 4
@SCALE_12BIT = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bu21029_ts_data*, i32*)* @bu21029_touch_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bu21029_touch_report(%struct.bu21029_ts_data* %0, i32* %1) #0 {
  %3 = alloca %struct.bu21029_ts_data*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bu21029_ts_data* %0, %struct.bu21029_ts_data** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %12 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ABS_PRESSURE, align 4
  %15 = call i32 @input_abs_get_max(i32 %13, i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = shl i32 %18, 4
  %20 = load i32*, i32** %4, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 4
  %24 = or i32 %19, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 4
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 4
  %33 = or i32 %28, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 %36, 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 4
  %42 = or i32 %37, %41
  store i32 %42, i32* %7, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 6
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 4
  %47 = load i32*, i32** %4, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 7
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 4
  %51 = or i32 %46, %50
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %105

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %54
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %7, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* %9, align 4
  %63 = mul nsw i32 %62, %61
  store i32 %63, i32* %9, align 4
  %64 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %65 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sdiv i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @SCALE_12BIT, align 4
  %74 = call i32 @DIV_ROUND_CLOSEST(i32 %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %57
  %79 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %80 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %83 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %82, i32 0, i32 2
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @touchscreen_report_pos(i32 %81, i32* %83, i32 %84, i32 %85, i32 0)
  %87 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %88 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ABS_PRESSURE, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 %91, %92
  %94 = call i32 @input_report_abs(i32 %89, i32 %90, i32 %93)
  %95 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %96 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BTN_TOUCH, align 4
  %99 = call i32 @input_report_key(i32 %97, i32 %98, i32 1)
  %100 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %101 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @input_sync(i32 %102)
  br label %104

104:                                              ; preds = %78, %57
  br label %105

105:                                              ; preds = %104, %54, %2
  ret void
}

declare dso_local i32 @input_abs_get_max(i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @touchscreen_report_pos(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
