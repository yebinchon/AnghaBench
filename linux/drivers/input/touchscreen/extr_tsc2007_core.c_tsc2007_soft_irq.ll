; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_soft_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc2007_core.c_tsc2007_soft_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc2007 = type { i64, i32 (...)*, %struct.TYPE_2__*, i32, i32, i32, i32, i32, %struct.input_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.input_dev = type { i32 }
%struct.ts_event = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"DOWN point(%4d,%4d), resistance (%4u)\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"ignored pressure %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"UP\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tsc2007_soft_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsc2007_soft_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tsc2007*, align 8
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca %struct.ts_event, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.tsc2007*
  store %struct.tsc2007* %10, %struct.tsc2007** %5, align 8
  %11 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %12 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %11, i32 0, i32 8
  %13 = load %struct.input_dev*, %struct.input_dev** %12, align 8
  store %struct.input_dev* %13, %struct.input_dev** %6, align 8
  br label %14

14:                                               ; preds = %92, %2
  %15 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %16 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %21 = call i64 @tsc2007_is_pen_down(%struct.tsc2007* %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %103

25:                                               ; preds = %23
  %26 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %27 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %26, i32 0, i32 7
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %30 = call i32 @tsc2007_read_values(%struct.tsc2007* %29, %struct.ts_event* %7)
  %31 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %32 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %31, i32 0, i32 7
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %35 = call i64 @tsc2007_calculate_resistance(%struct.tsc2007* %34, %struct.ts_event* %7)
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %25
  %39 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %40 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %39, i32 0, i32 6
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %103

44:                                               ; preds = %38, %25
  %45 = load i64, i64* %8, align 8
  %46 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %47 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp sle i64 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %52 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %7, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %7, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %56, i64 %58, i64 %59)
  %61 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %62 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = sub nsw i64 %63, %64
  store i64 %65, i64* %8, align 8
  %66 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %67 = load i32, i32* @BTN_TOUCH, align 4
  %68 = call i32 @input_report_key(%struct.input_dev* %66, i32 %67, i32 1)
  %69 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %70 = load i32, i32* @ABS_X, align 4
  %71 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %7, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @input_report_abs(%struct.input_dev* %69, i32 %70, i64 %72)
  %74 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %75 = load i32, i32* @ABS_Y, align 4
  %76 = getelementptr inbounds %struct.ts_event, %struct.ts_event* %7, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @input_report_abs(%struct.input_dev* %74, i32 %75, i64 %77)
  %79 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %80 = load i32, i32* @ABS_PRESSURE, align 4
  %81 = load i64, i64* %8, align 8
  %82 = call i32 @input_report_abs(%struct.input_dev* %79, i32 %80, i64 %81)
  %83 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %84 = call i32 @input_sync(%struct.input_dev* %83)
  br label %92

85:                                               ; preds = %44
  %86 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %87 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %8, align 8
  %91 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %90)
  br label %92

92:                                               ; preds = %85, %50
  %93 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %94 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %97 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %100 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @wait_event_timeout(i32 %95, i32 %98, i32 %101)
  br label %14

103:                                              ; preds = %43, %23
  %104 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %105 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %109 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %110 = load i32, i32* @BTN_TOUCH, align 4
  %111 = call i32 @input_report_key(%struct.input_dev* %109, i32 %110, i32 0)
  %112 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %113 = load i32, i32* @ABS_PRESSURE, align 4
  %114 = call i32 @input_report_abs(%struct.input_dev* %112, i32 %113, i64 0)
  %115 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %116 = call i32 @input_sync(%struct.input_dev* %115)
  %117 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %118 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %117, i32 0, i32 1
  %119 = load i32 (...)*, i32 (...)** %118, align 8
  %120 = icmp ne i32 (...)* %119, null
  br i1 %120, label %121, label %126

121:                                              ; preds = %103
  %122 = load %struct.tsc2007*, %struct.tsc2007** %5, align 8
  %123 = getelementptr inbounds %struct.tsc2007, %struct.tsc2007* %122, i32 0, i32 1
  %124 = load i32 (...)*, i32 (...)** %123, align 8
  %125 = call i32 (...) %124()
  br label %126

126:                                              ; preds = %121, %103
  %127 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %127
}

declare dso_local i64 @tsc2007_is_pen_down(%struct.tsc2007*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tsc2007_read_values(%struct.tsc2007*, %struct.ts_event*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tsc2007_calculate_resistance(%struct.tsc2007*, %struct.ts_event*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
