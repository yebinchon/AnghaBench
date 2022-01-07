; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_update_patterns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/trigger/extr_ledtrig-pattern.c_pattern_trig_update_patterns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pattern_trig_data = type { i32, i32, i32, i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pattern_trig_data*)* @pattern_trig_update_patterns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pattern_trig_update_patterns(%struct.pattern_trig_data* %0) #0 {
  %2 = alloca %struct.pattern_trig_data*, align 8
  store %struct.pattern_trig_data* %0, %struct.pattern_trig_data** %2, align 8
  %3 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %4 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %7 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %9 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %25, label %12

12:                                               ; preds = %1
  %13 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %14 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %17 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %22 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %20, %12, %1
  %26 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %27 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %30 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %33 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = sub nsw i32 %35, 1
  %37 = icmp eq i32 %28, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %25
  %39 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %40 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %43 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %49

44:                                               ; preds = %25
  %45 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %46 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.pattern_trig_data*, %struct.pattern_trig_data** %2, align 8
  %51 = getelementptr inbounds %struct.pattern_trig_data, %struct.pattern_trig_data* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
