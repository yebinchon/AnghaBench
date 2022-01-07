; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_runtime_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_runtime_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gic_chip_pm = type { i32, %struct.gic_clk_data*, %struct.gic_chip_data* }
%struct.gic_clk_data = type { i32 }
%struct.gic_chip_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gic_runtime_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_runtime_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.gic_chip_pm*, align 8
  %4 = alloca %struct.gic_chip_data*, align 8
  %5 = alloca %struct.gic_clk_data*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.gic_chip_pm* @dev_get_drvdata(%struct.device* %6)
  store %struct.gic_chip_pm* %7, %struct.gic_chip_pm** %3, align 8
  %8 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %3, align 8
  %9 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %8, i32 0, i32 2
  %10 = load %struct.gic_chip_data*, %struct.gic_chip_data** %9, align 8
  store %struct.gic_chip_data* %10, %struct.gic_chip_data** %4, align 8
  %11 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %3, align 8
  %12 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %11, i32 0, i32 1
  %13 = load %struct.gic_clk_data*, %struct.gic_clk_data** %12, align 8
  store %struct.gic_clk_data* %13, %struct.gic_clk_data** %5, align 8
  %14 = load %struct.gic_chip_data*, %struct.gic_chip_data** %4, align 8
  %15 = call i32 @gic_dist_save(%struct.gic_chip_data* %14)
  %16 = load %struct.gic_chip_data*, %struct.gic_chip_data** %4, align 8
  %17 = call i32 @gic_cpu_save(%struct.gic_chip_data* %16)
  %18 = load %struct.gic_clk_data*, %struct.gic_clk_data** %5, align 8
  %19 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %3, align 8
  %22 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_bulk_disable_unprepare(i32 %20, i32 %23)
  ret i32 0
}

declare dso_local %struct.gic_chip_pm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @gic_dist_save(%struct.gic_chip_data*) #1

declare dso_local i32 @gic_cpu_save(%struct.gic_chip_data*) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
