; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ts4800-ts.c_ts4800_ts_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_polled_dev = type { %struct.ts4800_ts*, %struct.input_dev* }
%struct.ts4800_ts = type { i32, i64, i64 }
%struct.input_dev = type { i32 }

@X_OFFSET = common dso_local global i64 0, align 8
@Y_OFFSET = common dso_local global i64 0, align 8
@PENDOWN_MASK = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@MAX_12BIT = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@DEBOUNCE_COUNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.input_polled_dev*)* @ts4800_ts_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ts4800_ts_poll(%struct.input_polled_dev* %0) #0 {
  %2 = alloca %struct.input_polled_dev*, align 8
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.ts4800_ts*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.input_polled_dev* %0, %struct.input_polled_dev** %2, align 8
  %8 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %9 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %8, i32 0, i32 1
  %10 = load %struct.input_dev*, %struct.input_dev** %9, align 8
  store %struct.input_dev* %10, %struct.input_dev** %3, align 8
  %11 = load %struct.input_polled_dev*, %struct.input_polled_dev** %2, align 8
  %12 = getelementptr inbounds %struct.input_polled_dev, %struct.input_polled_dev* %11, i32 0, i32 0
  %13 = load %struct.ts4800_ts*, %struct.ts4800_ts** %12, align 8
  store %struct.ts4800_ts* %13, %struct.ts4800_ts** %4, align 8
  %14 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %15 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @X_OFFSET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readw(i64 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %21 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @Y_OFFSET, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readw(i64 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @PENDOWN_MASK, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %1
  %32 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %33 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %38 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, -1
  store i64 %40, i64* %38, align 8
  br label %90

41:                                               ; preds = %31
  %42 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %43 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %48 = load i32, i32* @BTN_TOUCH, align 4
  %49 = call i32 @input_report_key(%struct.input_dev* %47, i32 %48, i32 1)
  %50 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %51 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %46, %41
  %53 = load i32, i32* %5, align 4
  %54 = xor i32 %53, -1
  %55 = ashr i32 %54, 4
  %56 = load i32, i32* @MAX_12BIT, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = xor i32 %58, -1
  %60 = ashr i32 %59, 4
  %61 = load i32, i32* @MAX_12BIT, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %64 = load i32, i32* @ABS_X, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @input_report_abs(%struct.input_dev* %63, i32 %64, i32 %65)
  %67 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %68 = load i32, i32* @ABS_Y, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @input_report_abs(%struct.input_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %72 = call i32 @input_sync(%struct.input_dev* %71)
  br label %90

73:                                               ; preds = %1
  %74 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %75 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %73
  %79 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %80 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %79, i32 0, i32 0
  store i32 0, i32* %80, align 8
  %81 = load i64, i64* @DEBOUNCE_COUNT, align 8
  %82 = load %struct.ts4800_ts*, %struct.ts4800_ts** %4, align 8
  %83 = getelementptr inbounds %struct.ts4800_ts, %struct.ts4800_ts* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %85 = load i32, i32* @BTN_TOUCH, align 4
  %86 = call i32 @input_report_key(%struct.input_dev* %84, i32 %85, i32 0)
  %87 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %88 = call i32 @input_sync(%struct.input_dev* %87)
  br label %89

89:                                               ; preds = %78, %73
  br label %90

90:                                               ; preds = %36, %89, %52
  ret void
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @input_report_key(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_report_abs(%struct.input_dev*, i32, i32) #1

declare dso_local i32 @input_sync(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
