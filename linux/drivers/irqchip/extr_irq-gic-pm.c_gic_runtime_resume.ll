; ModuleID = '/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/irqchip/extr_irq-gic-pm.c_gic_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gic_chip_pm = type { i32, %struct.gic_clk_data*, %struct.gic_chip_data* }
%struct.gic_clk_data = type { i32 }
%struct.gic_chip_data = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @gic_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gic_chip_pm*, align 8
  %5 = alloca %struct.gic_chip_data*, align 8
  %6 = alloca %struct.gic_clk_data*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.gic_chip_pm* @dev_get_drvdata(%struct.device* %8)
  store %struct.gic_chip_pm* %9, %struct.gic_chip_pm** %4, align 8
  %10 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %4, align 8
  %11 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %10, i32 0, i32 2
  %12 = load %struct.gic_chip_data*, %struct.gic_chip_data** %11, align 8
  store %struct.gic_chip_data* %12, %struct.gic_chip_data** %5, align 8
  %13 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %4, align 8
  %14 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %13, i32 0, i32 1
  %15 = load %struct.gic_clk_data*, %struct.gic_clk_data** %14, align 8
  store %struct.gic_clk_data* %15, %struct.gic_clk_data** %6, align 8
  %16 = load %struct.gic_clk_data*, %struct.gic_clk_data** %6, align 8
  %17 = getelementptr inbounds %struct.gic_clk_data, %struct.gic_clk_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.gic_chip_pm*, %struct.gic_chip_pm** %4, align 8
  %20 = getelementptr inbounds %struct.gic_chip_pm, %struct.gic_chip_pm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_bulk_prepare_enable(i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.device*, %struct.device** %3, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %39

30:                                               ; preds = %1
  %31 = load %struct.gic_chip_data*, %struct.gic_chip_data** %5, align 8
  %32 = icmp ne %struct.gic_chip_data* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %39

34:                                               ; preds = %30
  %35 = load %struct.gic_chip_data*, %struct.gic_chip_data** %5, align 8
  %36 = call i32 @gic_dist_restore(%struct.gic_chip_data* %35)
  %37 = load %struct.gic_chip_data*, %struct.gic_chip_data** %5, align 8
  %38 = call i32 @gic_cpu_restore(%struct.gic_chip_data* %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %34, %33, %25
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.gic_chip_pm* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @clk_bulk_prepare_enable(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @gic_dist_restore(%struct.gic_chip_data*) #1

declare dso_local i32 @gic_cpu_restore(%struct.gic_chip_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
