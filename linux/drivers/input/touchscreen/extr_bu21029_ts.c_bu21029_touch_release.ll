; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_bu21029_ts.c_bu21029_touch_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bu21029_ts_data = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@bu21029 = common dso_local global %struct.bu21029_ts_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bu21029_touch_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bu21029_touch_release(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bu21029_ts_data*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %5 = ptrtoint %struct.bu21029_ts_data* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @timer, align 4
  %8 = call %struct.bu21029_ts_data* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.bu21029_ts_data* %8, %struct.bu21029_ts_data** %3, align 8
  %9 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %10 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ABS_PRESSURE, align 4
  %13 = call i32 @input_report_abs(i32 %11, i32 %12, i32 0)
  %14 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %15 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @BTN_TOUCH, align 4
  %18 = call i32 @input_report_key(i32 %16, i32 %17, i32 0)
  %19 = load %struct.bu21029_ts_data*, %struct.bu21029_ts_data** %3, align 8
  %20 = getelementptr inbounds %struct.bu21029_ts_data, %struct.bu21029_ts_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @input_sync(i32 %21)
  ret void
}

declare dso_local %struct.bu21029_ts_data* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @input_report_abs(i32, i32, i32) #1

declare dso_local i32 @input_report_key(i32, i32, i32) #1

declare dso_local i32 @input_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
