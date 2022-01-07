; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_start_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_start_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.led_classdev = type { i32 (%struct.led_classdev*, i64, i32, i32)*, %struct.pattern_trig_data* }
%struct.pattern_trig_data = type { i32, %struct.TYPE_2__, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.led_classdev*)* @pattern_trig_start_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pattern_trig_start_pattern(%struct.led_classdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.led_classdev*, align 8
  %4 = alloca %struct.pattern_trig_data*, align 8
  store %struct.led_classdev* %0, %struct.led_classdev** %3, align 8
  %5 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %6 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %5, i32 0, i32 1
  %7 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %6, align 8
  store %struct.pattern_trig_data* %7, %struct.pattern_trig_data** %4, align 8
  %8 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %9 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %15 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %13
  %19 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %20 = getelementptr inbounds %struct.led_classdev, %struct.led_classdev* %19, i32 0, i32 0
  %21 = load i32 (%struct.led_classdev*, i64, i32, i32)*, i32 (%struct.led_classdev*, i64, i32, i32)** %20, align 8
  %22 = load %struct.led_classdev*, %struct.led_classdev** %3, align 8
  %23 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %24 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %27 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %30 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %21(%struct.led_classdev* %22, i64 %25, i32 %28, i32 %31)
  store i32 %32, i32* %2, align 4
  br label %62

33:                                               ; preds = %13
  %34 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %35 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %62

41:                                               ; preds = %33
  %42 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %43 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  %44 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %45 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %48 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  %49 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %50 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %51, 1
  %53 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %54 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %53, i32 0, i32 3
  store i64 %52, i64* %54, align 8
  %55 = load i32, i32* @jiffies, align 4
  %56 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %57 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %4, align 8
  %60 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %59, i32 0, i32 1
  %61 = call i32 @add_timer(%struct.TYPE_2__* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %41, %38, %18, %12
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
