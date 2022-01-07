; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_report_pen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_surface3_spi.c_surface3_spi_report_pen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.surface3_ts_data = type { i32, %struct.input_dev* }
%struct.input_dev = type { i32 }
%struct.surface3_ts_data_pen = type { i32, i32, i32, i32 }

@BTN_TOOL_RUBBER = common dso_local global i32 0, align 4
@BTN_TOOL_PEN = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@BTN_STYLUS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.surface3_ts_data*, %struct.surface3_ts_data_pen*)* @surface3_spi_report_pen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @surface3_spi_report_pen(%struct.surface3_ts_data* %0, %struct.surface3_ts_data_pen* %1) #0 {
  %3 = alloca %struct.surface3_ts_data*, align 8
  %4 = alloca %struct.surface3_ts_data_pen*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.surface3_ts_data* %0, %struct.surface3_ts_data** %3, align 8
  store %struct.surface3_ts_data_pen* %1, %struct.surface3_ts_data_pen** %4, align 8
  %10 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %11 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %10, i32 0, i32 1
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %5, align 8
  %13 = load %struct.surface3_ts_data_pen*, %struct.surface3_ts_data_pen** %4, align 8
  %14 = getelementptr inbounds %struct.surface3_ts_data_pen, %struct.surface3_ts_data_pen* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, 24
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @BTN_TOOL_RUBBER, align 4
  br label %29

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @BTN_TOOL_PEN, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  store i32 %30, i32* %9, align 4
  %31 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %32 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %29
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %39 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @input_report_key(%struct.input_dev* %37, i32 %40, i32 0)
  %42 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %43 = call i32 @input_sync(%struct.input_dev* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %46 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %36, %29
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = load i32, i32* @BTN_TOUCH, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 18
  %52 = call i32 @input_report_key(%struct.input_dev* %48, i32 %49, i32 %51)
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = load %struct.surface3_ts_data*, %struct.surface3_ts_data** %3, align 8
  %55 = getelementptr inbounds %struct.surface3_ts_data, %struct.surface3_ts_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @input_report_key(%struct.input_dev* %53, i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %85

61:                                               ; preds = %47
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = load i32, i32* @BTN_STYLUS, align 4
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 4
  %66 = call i32 @input_report_key(%struct.input_dev* %62, i32 %63, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %68 = load i32, i32* @ABS_X, align 4
  %69 = load %struct.surface3_ts_data_pen*, %struct.surface3_ts_data_pen** %4, align 8
  %70 = getelementptr inbounds %struct.surface3_ts_data_pen, %struct.surface3_ts_data_pen* %69, i32 0, i32 3
  %71 = call i32 @get_unaligned_le16(i32* %70)
  %72 = call i32 @input_report_abs(%struct.input_dev* %67, i32 %68, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load i32, i32* @ABS_Y, align 4
  %75 = load %struct.surface3_ts_data_pen*, %struct.surface3_ts_data_pen** %4, align 8
  %76 = getelementptr inbounds %struct.surface3_ts_data_pen, %struct.surface3_ts_data_pen* %75, i32 0, i32 2
  %77 = call i32 @get_unaligned_le16(i32* %76)
  %78 = call i32 @input_report_abs(%struct.input_dev* %73, i32 %74, i32 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = load i32, i32* @ABS_PRESSURE, align 4
  %81 = load %struct.surface3_ts_data_pen*, %struct.surface3_ts_data_pen** %4, align 8
  %82 = getelementptr inbounds %struct.surface3_ts_data_pen, %struct.surface3_ts_data_pen* %81, i32 0, i32 1
  %83 = call i32 @get_unaligned_le16(i32* %82)
  %84 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %61, %47
  ret void
}

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
