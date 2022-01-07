; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_parse_and_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_hideep.c_hideep_parse_and_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hideep_ts = type { i64*, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.hideep_event = type { i32 }

@HIDEEP_TOUCH_EVENT_INDEX = common dso_local global i64 0, align 8
@HIDEEP_KEY_EVENT_INDEX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"mt = %d, key = %d, lpm = %02x\00", align 1
@HIDEEP_MT_MAX = common dso_local global i32 0, align 4
@HIDEEP_KEY_MAX = common dso_local global i32 0, align 4
@HIDEEP_KEY_IDX_MASK = common dso_local global i64 0, align 8
@HIDEEP_KEY_PRESSED_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hideep_ts*)* @hideep_parse_and_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hideep_parse_and_report(%struct.hideep_ts* %0) #0 {
  %2 = alloca %struct.hideep_ts*, align 8
  %3 = alloca %struct.hideep_event*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.hideep_ts* %0, %struct.hideep_ts** %2, align 8
  %10 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %11 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @HIDEEP_TOUCH_EVENT_INDEX, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = bitcast i64* %14 to i8*
  %16 = bitcast i8* %15 to %struct.hideep_event*
  store %struct.hideep_event* %16, %struct.hideep_event** %3, align 8
  %17 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %18 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @HIDEEP_KEY_EVENT_INDEX, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64* %21, i64** %4, align 8
  %22 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %23 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %29 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 1
  %32 = load i64, i64* %31, align 8
  %33 = and i64 %32, 15
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %36 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 1
  %39 = load i64, i64* %38, align 8
  %40 = and i64 %39, 240
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %7, align 4
  %42 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %43 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %42, i32 0, i32 3
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @HIDEEP_MT_MAX, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %66, %1
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %59 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.hideep_event*, %struct.hideep_event** %3, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.hideep_event, %struct.hideep_event* %61, i64 %63
  %65 = call i32 @hideep_report_slot(i32 %60, %struct.hideep_event* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @HIDEEP_KEY_MAX, align 4
  %72 = call i32 @min(i32 %70, i32 %71)
  store i32 %72, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %73

73:                                               ; preds = %99, %69
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i64*, i64** %4, align 8
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %78, i64 %81
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %9, align 8
  %84 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %85 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %88 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load i64, i64* @HIDEEP_KEY_IDX_MASK, align 8
  %92 = and i64 %90, %91
  %93 = getelementptr inbounds i32, i32* %89, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @HIDEEP_KEY_PRESSED_MASK, align 8
  %97 = and i64 %95, %96
  %98 = call i32 @input_report_key(i32 %86, i32 %94, i64 %97)
  br label %99

99:                                               ; preds = %77
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %73

102:                                              ; preds = %73
  %103 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %104 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @input_mt_sync_frame(i32 %105)
  %107 = load %struct.hideep_ts*, %struct.hideep_ts** %2, align 8
  %108 = getelementptr inbounds %struct.hideep_ts, %struct.hideep_ts* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @input_sync(i32 %109)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @hideep_report_slot(i32, %struct.hideep_event*) #1

declare dso_local i32 @input_report_key(i32, i32, i64) #1

declare dso_local i32 @input_mt_sync_frame(i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
