; ModuleID = '/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_monitor_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/macintosh/extr_therm_adt746x.c_monitor_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermostat = type { i32 }

@fan_speed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @monitor_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @monitor_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.thermostat*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.thermostat*
  store %struct.thermostat* %5, %struct.thermostat** %3, align 8
  %6 = call i32 (...) @set_freezable()
  br label %7

7:                                                ; preds = %25, %1
  %8 = call i32 (...) @kthread_should_stop()
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %26

11:                                               ; preds = %7
  %12 = call i32 (...) @try_to_freeze()
  %13 = call i32 @msleep_interruptible(i32 2000)
  %14 = load i32, i32* @fan_speed, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.thermostat*, %struct.thermostat** %3, align 8
  %18 = call i32 @read_sensors(%struct.thermostat* %17)
  br label %19

19:                                               ; preds = %16, %11
  %20 = load i32, i32* @fan_speed, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load %struct.thermostat*, %struct.thermostat** %3, align 8
  %24 = call i32 @update_fans_speed(%struct.thermostat* %23)
  br label %25

25:                                               ; preds = %22, %19
  br label %7

26:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @read_sensors(%struct.thermostat*) #1

declare dso_local i32 @update_fans_speed(%struct.thermostat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
