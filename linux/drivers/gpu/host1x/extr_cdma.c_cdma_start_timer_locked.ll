; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_cdma_start_timer_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_cdma.c_cdma_start_timer_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x_cdma = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64 }
%struct.host1x_job = type { i32, i32, i32, i64 }
%struct.host1x = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.host1x_cdma*, %struct.host1x_job*)* @cdma_start_timer_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdma_start_timer_locked(%struct.host1x_cdma* %0, %struct.host1x_job* %1) #0 {
  %3 = alloca %struct.host1x_cdma*, align 8
  %4 = alloca %struct.host1x_job*, align 8
  %5 = alloca %struct.host1x*, align 8
  store %struct.host1x_cdma* %0, %struct.host1x_cdma** %3, align 8
  store %struct.host1x_job* %1, %struct.host1x_job** %4, align 8
  %6 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %7 = call %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma* %6)
  store %struct.host1x* %7, %struct.host1x** %5, align 8
  %8 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %9 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %47

14:                                               ; preds = %2
  %15 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %16 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %19 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  store i64 %17, i64* %20, align 8
  %21 = load %struct.host1x*, %struct.host1x** %5, align 8
  %22 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %23 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @host1x_syncpt_get(%struct.host1x* %21, i32 %24)
  %26 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %27 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 4
  %29 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %30 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %33 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = call i32 (...) @ktime_get()
  %36 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %37 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.host1x_cdma*, %struct.host1x_cdma** %3, align 8
  %40 = getelementptr inbounds %struct.host1x_cdma, %struct.host1x_cdma* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load %struct.host1x_job*, %struct.host1x_job** %4, align 8
  %43 = getelementptr inbounds %struct.host1x_job, %struct.host1x_job* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @msecs_to_jiffies(i32 %44)
  %46 = call i32 @schedule_delayed_work(i32* %41, i32 %45)
  br label %47

47:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.host1x* @cdma_to_host1x(%struct.host1x_cdma*) #1

declare dso_local i32 @host1x_syncpt_get(%struct.host1x*, i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
