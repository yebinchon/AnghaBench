; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_timer_function.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_timer_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_trig_data = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@UPDATE_INTERVAL = common dso_local global i64 0, align 8
@data = common dso_local global %struct.pattern_trig_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pattern_trig_timer_function to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pattern_trig_timer_function(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.pattern_trig_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %5 = ptrtoint %struct.pattern_trig_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.pattern_trig_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.pattern_trig_data* %8, %struct.pattern_trig_data** %3, align 8
  br label %9

9:                                                ; preds = %75, %1
  %10 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %11 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %16 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %98

20:                                               ; preds = %14, %9
  %21 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %22 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %27 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %25, %30
  br i1 %31, label %32, label %65

32:                                               ; preds = %20
  %33 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %34 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %37 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %36, i32 0, i32 3
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @led_set_brightness(i32 %35, i64 %40)
  %42 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %43 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %42, i32 0, i32 1
  %44 = load i64, i64* @jiffies, align 8
  %45 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %46 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @msecs_to_jiffies(i64 %49)
  %51 = add nsw i64 %44, %50
  %52 = call i32 @mod_timer(i32* %43, i64 %51)
  %53 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %54 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %53, i32 0, i32 4
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %32
  %60 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %61 = call i32 @pattern_trig_update_patterns(%struct.pattern_trig_data* %60)
  br label %62

62:                                               ; preds = %59, %32
  %63 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %64 = call i32 @pattern_trig_update_patterns(%struct.pattern_trig_data* %63)
  br label %97

65:                                               ; preds = %20
  %66 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %67 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %70 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %68, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %77 = call i32 @pattern_trig_update_patterns(%struct.pattern_trig_data* %76)
  br label %9

78:                                               ; preds = %65
  %79 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %80 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %83 = call i64 @pattern_trig_compute_brightness(%struct.pattern_trig_data* %82)
  %84 = call i32 @led_set_brightness(i32 %81, i64 %83)
  %85 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %86 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %85, i32 0, i32 1
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i64, i64* @UPDATE_INTERVAL, align 8
  %89 = call i64 @msecs_to_jiffies(i64 %88)
  %90 = add nsw i64 %87, %89
  %91 = call i32 @mod_timer(i32* %86, i64 %90)
  %92 = load i64, i64* @UPDATE_INTERVAL, align 8
  %93 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %3, align 8
  %94 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add nsw i64 %95, %92
  store i64 %96, i64* %94, align 8
  br label %97

97:                                               ; preds = %78, %62
  br label %98

98:                                               ; preds = %97, %19
  ret void
}

declare dso_local %struct.pattern_trig_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @led_set_brightness(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @pattern_trig_update_patterns(%struct.pattern_trig_data*) #1

declare dso_local i64 @pattern_trig_compute_brightness(%struct.pattern_trig_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
