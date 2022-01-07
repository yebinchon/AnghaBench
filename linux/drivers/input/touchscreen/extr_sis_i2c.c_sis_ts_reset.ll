; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_sis_i2c.c_sis_ts_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_ts_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_ts_data*)* @sis_ts_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_ts_reset(%struct.sis_ts_data* %0) #0 {
  %2 = alloca %struct.sis_ts_data*, align 8
  store %struct.sis_ts_data* %0, %struct.sis_ts_data** %2, align 8
  %3 = load %struct.sis_ts_data*, %struct.sis_ts_data** %2, align 8
  %4 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = call i32 @usleep_range(i32 1000, i32 2000)
  %9 = load %struct.sis_ts_data*, %struct.sis_ts_data** %2, align 8
  %10 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @gpiod_set_value(i64 %11, i32 1)
  %13 = call i32 @usleep_range(i32 1000, i32 2000)
  %14 = load %struct.sis_ts_data*, %struct.sis_ts_data** %2, align 8
  %15 = getelementptr inbounds %struct.sis_ts_data, %struct.sis_ts_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @gpiod_set_value(i64 %16, i32 0)
  %18 = call i32 @msleep(i32 100)
  br label %19

19:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @gpiod_set_value(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
