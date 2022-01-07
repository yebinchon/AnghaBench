; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/serio/extr_i8042.c_i8042_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.serio* }
%struct.serio = type { i32, %struct.i8042_port* }
%struct.i8042_port = type { i32 }

@i8042_ports = common dso_local global %struct.TYPE_2__* null, align 8
@I8042_KBD_PORT_NO = common dso_local global i64 0, align 8
@i8042_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*)* @i8042_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_start(%struct.serio* %0) #0 {
  %2 = alloca %struct.serio*, align 8
  %3 = alloca %struct.i8042_port*, align 8
  store %struct.serio* %0, %struct.serio** %2, align 8
  %4 = load %struct.serio*, %struct.serio** %2, align 8
  %5 = getelementptr inbounds %struct.serio, %struct.serio* %4, i32 0, i32 1
  %6 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  store %struct.i8042_port* %6, %struct.i8042_port** %3, align 8
  %7 = load %struct.serio*, %struct.serio** %2, align 8
  %8 = getelementptr inbounds %struct.serio, %struct.serio* %7, i32 0, i32 0
  %9 = call i32 @device_set_wakeup_capable(i32* %8, i32 1)
  %10 = call i64 (...) @pm_suspend_default_s2idle()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.serio*, %struct.serio** %2, align 8
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @i8042_ports, align 8
  %15 = load i64, i64* @I8042_KBD_PORT_NO, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.serio*, %struct.serio** %17, align 8
  %19 = icmp eq %struct.serio* %13, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = load %struct.serio*, %struct.serio** %2, align 8
  %22 = getelementptr inbounds %struct.serio, %struct.serio* %21, i32 0, i32 0
  %23 = call i32 @device_set_wakeup_enable(i32* %22, i32 1)
  br label %24

24:                                               ; preds = %20, %12, %1
  %25 = call i32 @spin_lock_irq(i32* @i8042_lock)
  %26 = load %struct.i8042_port*, %struct.i8042_port** %3, align 8
  %27 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = call i32 @spin_unlock_irq(i32* @i8042_lock)
  ret i32 0
}

declare dso_local i32 @device_set_wakeup_capable(i32*, i32) #1

declare dso_local i64 @pm_suspend_default_s2idle(...) #1

declare dso_local i32 @device_set_wakeup_enable(i32*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
