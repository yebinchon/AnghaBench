; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/keyboard/extr_tegra-kbc.c_tegra_kbc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_kbc = type { i32, i32, i32, i32, i64 }

@KBC_CONTROL_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_kbc*)* @tegra_kbc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_kbc_stop(%struct.tegra_kbc* %0) #0 {
  %2 = alloca %struct.tegra_kbc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_kbc* %0, %struct.tegra_kbc** %2, align 8
  %5 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %5, i32 0, i32 3
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %10 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @KBC_CONTROL_0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, -2
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %19 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @KBC_CONTROL_0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %25 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %24, i32 0, i32 3
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %29 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @disable_irq(i32 %30)
  %32 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %33 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %32, i32 0, i32 1
  %34 = call i32 @del_timer_sync(i32* %33)
  %35 = load %struct.tegra_kbc*, %struct.tegra_kbc** %2, align 8
  %36 = getelementptr inbounds %struct.tegra_kbc, %struct.tegra_kbc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @clk_disable_unprepare(i32 %37)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
