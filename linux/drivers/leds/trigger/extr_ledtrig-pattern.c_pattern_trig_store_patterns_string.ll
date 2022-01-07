; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_store_patterns_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_store_patterns_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_trig_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAX_PATTERNS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"%d %u %n\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pattern_trig_data*, i8*, i64)* @pattern_trig_store_patterns_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_trig_store_patterns_string(%struct.pattern_trig_data* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pattern_trig_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pattern_trig_data* %0, %struct.pattern_trig_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %54, %3
  %12 = load i32, i32* %10, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 1
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11
  %18 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %19 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MAX_PATTERNS, align 8
  %22 = icmp ult i64 %20, %21
  br label %23

23:                                               ; preds = %17, %11
  %24 = phi i1 [ false, %11 ], [ %22, %17 ]
  br i1 %24, label %25, label %62

25:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %31 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %34 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %39 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %42 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @sscanf(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %37, i32* %45, i32* %9)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 2
  br i1 %48, label %49, label %54

49:                                               ; preds = %25
  %50 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %51 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %25
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  %58 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %5, align 8
  %59 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %59, align 8
  br label %11

62:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %49
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
