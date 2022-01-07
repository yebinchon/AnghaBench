; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-tegra.c_tegra_i2c_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_i2c_dev = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_i2c_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tegra_i2c_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tegra_i2c_dev* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tegra_i2c_dev* %5, %struct.tegra_i2c_dev** %3, align 8
  %6 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %6, i32 0, i32 4
  %8 = call i32 @i2c_del_adapter(i32* %7)
  %9 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_disable(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 @pm_runtime_disable(i32* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call i32 @pm_runtime_status_suspended(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %18
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call i32 @tegra_i2c_runtime_suspend(i32* %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_unprepare(i32 %33)
  %35 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %30
  %42 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_i2c_dev, %struct.tegra_i2c_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @clk_unprepare(i32 %44)
  br label %46

46:                                               ; preds = %41, %30
  %47 = load %struct.tegra_i2c_dev*, %struct.tegra_i2c_dev** %3, align 8
  %48 = call i32 @tegra_i2c_release_dma(%struct.tegra_i2c_dev* %47)
  ret i32 0
}

declare dso_local %struct.tegra_i2c_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @i2c_del_adapter(i32*) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_status_suspended(i32*) #1

declare dso_local i32 @tegra_i2c_runtime_suspend(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @tegra_i2c_release_dma(%struct.tegra_i2c_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
