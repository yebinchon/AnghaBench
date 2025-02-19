; ModuleID = '/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_hangup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ipack/devices/extr_ipoctal.c_ipoctal_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.ipoctal_channel* }
%struct.ipoctal_channel = type { %struct.TYPE_3__, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*)* @ipoctal_hangup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipoctal_hangup(%struct.tty_struct* %0) #0 {
  %2 = alloca %struct.tty_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ipoctal_channel*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %2, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %2, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 0
  %7 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %6, align 8
  store %struct.ipoctal_channel* %7, %struct.ipoctal_channel** %4, align 8
  %8 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %9 = icmp eq %struct.ipoctal_channel* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %13 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %17 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %16, i32 0, i32 4
  store i64 0, i64* %17, align 8
  %18 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %19 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %18, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %21 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %23 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %22, i32 0, i32 1
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  %26 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %27 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %26, i32 0, i32 0
  %28 = call i32 @tty_port_hangup(%struct.TYPE_3__* %27)
  %29 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %30 = call i32 @ipoctal_reset_channel(%struct.ipoctal_channel* %29)
  %31 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %31, i32 0, i32 0
  %33 = call i32 @tty_port_set_initialized(%struct.TYPE_3__* %32, i32 0)
  %34 = load %struct.ipoctal_channel*, %struct.ipoctal_channel** %4, align 8
  %35 = getelementptr inbounds %struct.ipoctal_channel, %struct.ipoctal_channel* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @wake_up_interruptible(i32* %36)
  br label %38

38:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tty_port_hangup(%struct.TYPE_3__*) #1

declare dso_local i32 @ipoctal_reset_channel(%struct.ipoctal_channel*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
