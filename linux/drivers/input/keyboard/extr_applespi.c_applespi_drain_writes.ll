; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_drain_writes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_applespi.c_applespi_drain_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.applespi_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.applespi_data*)* @applespi_drain_writes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @applespi_drain_writes(%struct.applespi_data* %0) #0 {
  %2 = alloca %struct.applespi_data*, align 8
  %3 = alloca i64, align 8
  store %struct.applespi_data* %0, %struct.applespi_data** %2, align 8
  %4 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %5 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %9 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %11 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %14 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %20 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @wait_event_lock_irq(i32 %12, i32 %18, i32 %21)
  %23 = load %struct.applespi_data*, %struct.applespi_data** %2, align 8
  %24 = getelementptr inbounds %struct.applespi_data, %struct.applespi_data* %23, i32 0, i32 1
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* %24, i64 %25)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @wait_event_lock_irq(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
