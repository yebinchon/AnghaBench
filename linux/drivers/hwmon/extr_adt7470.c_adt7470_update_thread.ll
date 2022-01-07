; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_update_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwmon/extr_adt7470.c_adt7470_update_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.adt7470_data = type { i32, i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @adt7470_update_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adt7470_update_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.adt7470_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.i2c_client*
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %8 = call %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client* %7)
  store %struct.adt7470_data* %8, %struct.adt7470_data** %4, align 8
  br label %9

9:                                                ; preds = %28, %1
  %10 = call i64 (...) @kthread_should_stop()
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %15 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %19 = call i32 @adt7470_read_temperatures(%struct.i2c_client* %17, %struct.adt7470_data* %18)
  %20 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %21 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %20, i32 0, i32 1
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %24 = call i32 @set_current_state(i32 %23)
  %25 = call i64 (...) @kthread_should_stop()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  br label %34

28:                                               ; preds = %13
  %29 = load %struct.adt7470_data*, %struct.adt7470_data** %4, align 8
  %30 = getelementptr inbounds %struct.adt7470_data, %struct.adt7470_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @msecs_to_jiffies(i32 %31)
  %33 = call i32 @schedule_timeout(i32 %32)
  br label %9

34:                                               ; preds = %27, %9
  ret i32 0
}

declare dso_local %struct.adt7470_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @adt7470_read_temperatures(%struct.i2c_client*, %struct.adt7470_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
