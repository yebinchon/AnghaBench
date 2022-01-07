; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c___tsc200x_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c___tsc200x_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc200x = type { i64, i32, i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsc200x*)* @__tsc200x_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tsc200x_enable(%struct.tsc200x* %0) #0 {
  %2 = alloca %struct.tsc200x*, align 8
  store %struct.tsc200x* %0, %struct.tsc200x** %2, align 8
  %3 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %4 = call i32 @tsc200x_start_scan(%struct.tsc200x* %3)
  %5 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %6 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %11 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* @jiffies, align 4
  %16 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %17 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %19 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %18, i32 0, i32 1
  %20 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %21 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @msecs_to_jiffies(i64 %22)
  %24 = call i32 @round_jiffies_relative(i32 %23)
  %25 = call i32 @schedule_delayed_work(i32* %19, i32 %24)
  br label %26

26:                                               ; preds = %14, %9, %1
  ret void
}

declare dso_local i32 @tsc200x_start_scan(%struct.tsc200x*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
