; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_atmel_mxt_ts.c_mxt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxt_data = type { i32 }

@MXT_TOUCH_MULTI_T9 = common dso_local global i32 0, align 4
@MXT_T9_CTRL = common dso_local global i32 0, align 4
@MXT_POWER_CFG_DEEPSLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxt_data*)* @mxt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxt_stop(%struct.mxt_data* %0) #0 {
  %2 = alloca %struct.mxt_data*, align 8
  store %struct.mxt_data* %0, %struct.mxt_data** %2, align 8
  %3 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %4 = getelementptr inbounds %struct.mxt_data, %struct.mxt_data* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %12 [
    i32 128, label %6
    i32 129, label %11
  ]

6:                                                ; preds = %1
  %7 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %8 = load i32, i32* @MXT_TOUCH_MULTI_T9, align 4
  %9 = load i32, i32* @MXT_T9_CTRL, align 4
  %10 = call i32 @mxt_write_object(%struct.mxt_data* %7, i32 %8, i32 %9, i32 0)
  br label %16

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %11
  %13 = load %struct.mxt_data*, %struct.mxt_data** %2, align 8
  %14 = load i32, i32* @MXT_POWER_CFG_DEEPSLEEP, align 4
  %15 = call i32 @mxt_set_t7_power_cfg(%struct.mxt_data* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @mxt_write_object(%struct.mxt_data*, i32, i32, i32) #1

declare dso_local i32 @mxt_set_t7_power_cfg(%struct.mxt_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
