; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_store_patterns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_store_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 (%struct.led_classdev*)*, %struct.pattern_trig_data* }
%struct.pattern_trig_data = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*, i8*, i32*, i64, i32)* @pattern_trig_store_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_trig_store_patterns(%struct.led_classdev* %0, i8* %1, i32* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.led_classdev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.pattern_trig_data*, align 8
  %12 = alloca i32, align 4
  store %struct.led_classdev* %0, %struct.led_classdev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %14 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %13, i32 0, i32 1
  %15 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %14, align 8
  store %struct.pattern_trig_data* %15, %struct.pattern_trig_data** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %17 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %20 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %19, i32 0, i32 3
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %23 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %5
  %27 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %28 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %27, i32 0, i32 0
  %29 = load i32 (%struct.led_classdev*)*, i32 (%struct.led_classdev*)** %28, align 8
  %30 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %31 = call i32 %29(%struct.led_classdev* %30)
  br label %32

32:                                               ; preds = %26, %5
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %35 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %37 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @pattern_trig_store_patterns_string(%struct.pattern_trig_data* %41, i8* %42, i64 %43)
  store i32 %44, i32* %12, align 4
  br label %50

45:                                               ; preds = %32
  %46 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @pattern_trig_store_patterns_int(%struct.pattern_trig_data* %46, i32* %47, i64 %48)
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %63

54:                                               ; preds = %50
  %55 = load %struct.led_classdev*, %struct.led_classdev** %6, align 8
  %56 = call i32 @pattern_trig_start_pattern(%struct.led_classdev* %55)
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %61 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %53
  %64 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %11, align 8
  %65 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %64, i32 0, i32 1
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  br label %74

72:                                               ; preds = %63
  %73 = load i64, i64* %9, align 8
  br label %74

74:                                               ; preds = %72, %69
  %75 = phi i64 [ %71, %69 ], [ %73, %72 ]
  %76 = trunc i64 %75 to i32
  ret i32 %76
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @pattern_trig_store_patterns_string(%struct.pattern_trig_data*, i8*, i64) #1

declare dso_local i32 @pattern_trig_store_patterns_int(%struct.pattern_trig_data*, i32*, i64) #1

declare dso_local i32 @pattern_trig_start_pattern(%struct.led_classdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
