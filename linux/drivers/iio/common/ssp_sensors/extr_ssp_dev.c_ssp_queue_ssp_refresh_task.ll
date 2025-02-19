; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_queue_ssp_refresh_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/common/ssp_sensors/extr_ssp_dev.c_ssp_queue_ssp_refresh_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssp_data = type { i32 }

@system_power_efficient_wq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_queue_ssp_refresh_task(%struct.ssp_data* %0, i32 %1) #0 {
  %3 = alloca %struct.ssp_data*, align 8
  %4 = alloca i32, align 4
  store %struct.ssp_data* %0, %struct.ssp_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %6 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %5, i32 0, i32 0
  %7 = call i32 @cancel_delayed_work_sync(i32* %6)
  %8 = load i32, i32* @system_power_efficient_wq, align 4
  %9 = load %struct.ssp_data*, %struct.ssp_data** %3, align 8
  %10 = getelementptr inbounds %struct.ssp_data, %struct.ssp_data* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @msecs_to_jiffies(i32 %11)
  %13 = call i32 @queue_delayed_work(i32 %8, i32* %10, i32 %12)
  ret i32 %13
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
