; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tps6507x-ts.c_tps6507x_ts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tps6507x-ts.c_tps6507x_ts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.input_dev*, %struct.tps6507x_ts* }
%struct.input_dev = type { i32 }
%struct.tps6507x_ts = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i64 }

@TPS6507X_TSCMODE_PRESSURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"UP\0A\00", align 1
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"DOWN\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"still down\0A\00", align 1
@TPS6507X_TSCMODE_X_POSITION = common dso_local global i32 0, align 4
@TPS6507X_TSCMODE_Y_POSITION = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @tps6507x_ts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tps6507x_ts_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.tps6507x_ts*, align 8
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %7 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %8 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %7, i32 0, i32 1
  %9 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %8, align 8
  store %struct.tps6507x_ts* %9, %struct.tps6507x_ts** %3, align 8
  %10 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %11 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %10, i32 0, i32 0
  %12 = load %struct.input_dev*, %struct.input_dev** %11, align 8
  store %struct.input_dev* %12, %struct.input_dev** %4, align 8
  %13 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %14 = load i32, i32* @TPS6507X_TSCMODE_PRESSURE, align 4
  %15 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %16 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @tps6507x_adc_conversion(%struct.tps6507x_ts* %13, i32 %14, i64* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %127

22:                                               ; preds = %1
  %23 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %24 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %28 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %26, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %22
  %35 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %36 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %22
  %40 = phi i1 [ false, %22 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %39
  %45 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %46 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load i32, i32* @BTN_TOUCH, align 4
  %51 = call i32 @input_report_key(%struct.input_dev* %49, i32 %50, i32 0)
  %52 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %53 = load i32, i32* @ABS_PRESSURE, align 4
  %54 = call i32 @input_report_abs(%struct.input_dev* %52, i32 %53, i64 0)
  %55 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %56 = call i32 @input_sync(%struct.input_dev* %55)
  %57 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %58 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %44, %39
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %126

62:                                               ; preds = %59
  %63 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %64 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %62
  %68 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %69 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %72 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %73 = load i32, i32* @BTN_TOUCH, align 4
  %74 = call i32 @input_report_key(%struct.input_dev* %72, i32 %73, i32 1)
  br label %80

75:                                               ; preds = %62
  %76 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %77 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dev_dbg(i32 %78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %82 = load i32, i32* @TPS6507X_TSCMODE_X_POSITION, align 4
  %83 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %84 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = call i64 @tps6507x_adc_conversion(%struct.tps6507x_ts* %81, i32 %82, i64* %85)
  store i64 %86, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %127

90:                                               ; preds = %80
  %91 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %92 = load i32, i32* @TPS6507X_TSCMODE_Y_POSITION, align 4
  %93 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %94 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = call i64 @tps6507x_adc_conversion(%struct.tps6507x_ts* %91, i32 %92, i64* %95)
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %6, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %127

100:                                              ; preds = %90
  %101 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %102 = load i32, i32* @ABS_X, align 4
  %103 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %104 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = call i32 @input_report_abs(%struct.input_dev* %101, i32 %102, i64 %106)
  %108 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %109 = load i32, i32* @ABS_Y, align 4
  %110 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %111 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @input_report_abs(%struct.input_dev* %108, i32 %109, i64 %113)
  %115 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %116 = load i32, i32* @ABS_PRESSURE, align 4
  %117 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %118 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @input_report_abs(%struct.input_dev* %115, i32 %116, i64 %120)
  %122 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %123 = call i32 @input_sync(%struct.input_dev* %122)
  %124 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %125 = getelementptr inbounds %struct.tps6507x_ts, %struct.tps6507x_ts* %124, i32 0, i32 1
  store i32 1, i32* %125, align 8
  br label %126

126:                                              ; preds = %100, %59
  br label %127

127:                                              ; preds = %126, %99, %89, %21
  %128 = load %struct.tps6507x_ts*, %struct.tps6507x_ts** %3, align 8
  %129 = call i32 @tps6507x_adc_standby(%struct.tps6507x_ts* %128)
  ret void
}

declare dso_local i64 @tps6507x_adc_conversion(%struct.tps6507x_ts*, i32, i64*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i64) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

declare dso_local i32 @tps6507x_adc_standby(%struct.tps6507x_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
