; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_ucb1400_ts.c_ucb1400_ts_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1400_ts = type { i32, i32, i32, i32 }

@UCB_TS_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucb1400_ts*)* @ucb1400_ts_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1400_ts_stop(%struct.ucb1400_ts* %0) #0 {
  %2 = alloca %struct.ucb1400_ts*, align 8
  store %struct.ucb1400_ts* %0, %struct.ucb1400_ts** %2, align 8
  %3 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %4 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %3, i32 0, i32 0
  store i32 1, i32* %4, align 4
  %5 = call i32 (...) @mb()
  %6 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %7 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 3
  %8 = call i32 @wake_up(i32* %7)
  %9 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %10 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @disable_irq(i32 %11)
  %13 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %14 = call i32 @ucb1400_ts_irq_disable(%struct.ucb1400_ts* %13)
  %15 = load %struct.ucb1400_ts*, %struct.ucb1400_ts** %2, align 8
  %16 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCB_TS_CR, align 4
  %19 = call i32 @ucb1400_reg_write(i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @ucb1400_ts_irq_disable(%struct.ucb1400_ts*) #1

declare dso_local i32 @ucb1400_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
