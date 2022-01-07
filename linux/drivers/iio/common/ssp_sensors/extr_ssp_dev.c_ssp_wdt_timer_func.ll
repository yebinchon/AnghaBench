; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_wdt_timer_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_wdt_timer_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32, i64, i64, i32, i32 }
%struct.timer_list = type { i32 }

@wdt_timer = common dso_local global i32 0, align 4
@SSP_LIMIT_TIMEOUT_CNT = common dso_local global i64 0, align 8
@SSP_LIMIT_RESET_CNT = common dso_local global i64 0, align 8
@system_power_efficient_wq = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SSP_WDT_TIME = common dso_local global i32 0, align 4
@data = common dso_local global %struct.ssp_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @ssp_wdt_timer_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssp_wdt_timer_func(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.ssp_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %5 = ptrtoint %struct.ssp_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @wdt_timer, align 4
  %8 = call %struct.ssp_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.ssp_data* %8, %struct.ssp_data** %3, align 8
  %9 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %10 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %13 [
    i32 129, label %12
    i32 130, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %1, %1, %1
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %15 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SSP_LIMIT_TIMEOUT_CNT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %21 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SSP_LIMIT_RESET_CNT, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19, %13
  %26 = load i32, i32* @system_power_efficient_wq, align 4
  %27 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %28 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %27, i32 0, i32 4
  %29 = call i32 @queue_work(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %25, %19
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %33 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %32, i32 0, i32 3
  %34 = load i64, i64* @jiffies, align 8
  %35 = load i32, i32* @SSP_WDT_TIME, align 4
  %36 = call i64 @msecs_to_jiffies(i32 %35)
  %37 = add nsw i64 %34, %36
  %38 = call i32 @mod_timer(i32* %33, i64 %37)
  ret void
}

declare dso_local %struct.ssp_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
