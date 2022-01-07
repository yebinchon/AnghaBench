; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c___tsc200x_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_tsc200x-core.c___tsc200x_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsc200x = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tsc200x*)* @__tsc200x_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tsc200x_disable(%struct.tsc200x* %0) #0 {
  %2 = alloca %struct.tsc200x*, align 8
  store %struct.tsc200x* %0, %struct.tsc200x** %2, align 8
  %3 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %4 = call i32 @tsc200x_stop_scan(%struct.tsc200x* %3)
  %5 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %6 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @disable_irq(i32 %7)
  %9 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %10 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %9, i32 0, i32 2
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %13 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %12, i32 0, i32 1
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.tsc200x*, %struct.tsc200x** %2, align 8
  %16 = getelementptr inbounds %struct.tsc200x, %struct.tsc200x* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @enable_irq(i32 %17)
  ret void
}

declare dso_local i32 @tsc200x_stop_scan(%struct.tsc200x*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
