; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_report_pen_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_wacom_w8001.c_report_pen_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w8001 = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.w8001_coord = type { i32, i32, i32, i32, i32, i32, i32 }

@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@BTN_STYLUS2 = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w8001*, %struct.w8001_coord*)* @report_pen_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_pen_events(%struct.w8001* %0, %struct.w8001_coord* %1) #0 {
  %3 = alloca %struct.w8001*, align 8
  %4 = alloca %struct.w8001_coord*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.w8001* %0, %struct.w8001** %3, align 8
  store %struct.w8001_coord* %1, %struct.w8001_coord** %4, align 8
  %6 = load %struct.w8001*, %struct.w8001** %3, align 8
  %7 = getelementptr inbounds %struct.w8001, %struct.w8001* %6, i32 0, i32 1
  %8 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  store %struct.input_dev* %8, %struct.input_dev** %5, align 8
  %9 = load %struct.w8001*, %struct.w8001** %3, align 8
  %10 = getelementptr inbounds %struct.w8001, %struct.w8001* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %50 [
    i32 129, label %12
    i32 130, label %38
    i32 128, label %38
  ]

12:                                               ; preds = %2
  %13 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %14 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %12
  %18 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %19 = load i32, i32* @ABS_PRESSURE, align 4
  %20 = call i32 @input_report_abs(%struct.input_dev* %18, i32 %19, i32 0)
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = load i32, i32* @BTN_TOUCH, align 4
  %23 = call i32 @input_report_key(%struct.input_dev* %21, i32 %22, i32 0)
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load i32, i32* @BTN_STYLUS, align 4
  %26 = call i32 @input_report_key(%struct.input_dev* %24, i32 %25, i32 0)
  %27 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %28 = load i32, i32* @BTN_STYLUS2, align 4
  %29 = call i32 @input_report_key(%struct.input_dev* %27, i32 %28, i32 0)
  %30 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %31 = call i32 @input_report_key(%struct.input_dev* %30, i32 129, i32 0)
  %32 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %33 = call i32 @input_sync(%struct.input_dev* %32)
  %34 = load i32, i32* @BTN_TOOL_PEN, align 4
  %35 = load %struct.w8001*, %struct.w8001** %3, align 8
  %36 = getelementptr inbounds %struct.w8001, %struct.w8001* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %17, %12
  br label %57

38:                                               ; preds = %2, %2
  %39 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %40 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 129, %43 ], [ %45, %44 ]
  %48 = load %struct.w8001*, %struct.w8001** %3, align 8
  %49 = getelementptr inbounds %struct.w8001, %struct.w8001* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  br label %57

50:                                               ; preds = %2
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = load i32, i32* @BTN_STYLUS2, align 4
  %53 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %54 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @input_report_key(%struct.input_dev* %51, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %50, %46, %37
  %58 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %59 = load i32, i32* @ABS_X, align 4
  %60 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %61 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @input_report_abs(%struct.input_dev* %58, i32 %59, i32 %62)
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = load i32, i32* @ABS_Y, align 4
  %66 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %67 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @input_report_abs(%struct.input_dev* %64, i32 %65, i32 %68)
  %70 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %71 = load i32, i32* @ABS_PRESSURE, align 4
  %72 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %73 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @input_report_abs(%struct.input_dev* %70, i32 %71, i32 %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = load i32, i32* @BTN_TOUCH, align 4
  %78 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %79 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @input_report_key(%struct.input_dev* %76, i32 %77, i32 %80)
  %82 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %83 = load i32, i32* @BTN_STYLUS, align 4
  %84 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %85 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @input_report_key(%struct.input_dev* %82, i32 %83, i32 %86)
  %88 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %89 = load %struct.w8001*, %struct.w8001** %3, align 8
  %90 = getelementptr inbounds %struct.w8001, %struct.w8001* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %93 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @input_report_key(%struct.input_dev* %88, i32 %91, i32 %94)
  %96 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %97 = call i32 @input_sync(%struct.input_dev* %96)
  %98 = load %struct.w8001_coord*, %struct.w8001_coord** %4, align 8
  %99 = getelementptr inbounds %struct.w8001_coord, %struct.w8001_coord* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %57
  %103 = load %struct.w8001*, %struct.w8001** %3, align 8
  %104 = getelementptr inbounds %struct.w8001, %struct.w8001* %103, i32 0, i32 0
  store i32 128, i32* %104, align 8
  br label %105

105:                                              ; preds = %102, %57
  ret void
}

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
