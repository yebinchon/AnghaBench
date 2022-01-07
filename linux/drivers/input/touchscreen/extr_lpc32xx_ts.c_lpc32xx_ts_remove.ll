; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_ts_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/touchscreen/extr_lpc32xx_ts.c_lpc32xx_ts_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.lpc32xx_tsc = type { i32, i32, i32, i32 }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @lpc32xx_ts_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_ts_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.lpc32xx_tsc*, align 8
  %4 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.lpc32xx_tsc* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.lpc32xx_tsc* %6, %struct.lpc32xx_tsc** %3, align 8
  %7 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %8 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %11 = call i32 @free_irq(i32 %9, %struct.lpc32xx_tsc* %10)
  %12 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %13 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @input_unregister_device(i32 %14)
  %16 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %17 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_put(i32 %18)
  %20 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %21 = getelementptr inbounds %struct.lpc32xx_tsc, %struct.lpc32xx_tsc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @iounmap(i32 %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = load i32, i32* @IORESOURCE_MEM, align 4
  %26 = call %struct.resource* @platform_get_resource(%struct.platform_device* %24, i32 %25, i32 0)
  store %struct.resource* %26, %struct.resource** %4, align 8
  %27 = load %struct.resource*, %struct.resource** %4, align 8
  %28 = getelementptr inbounds %struct.resource, %struct.resource* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = call i32 @resource_size(%struct.resource* %30)
  %32 = call i32 @release_mem_region(i32 %29, i32 %31)
  %33 = load %struct.lpc32xx_tsc*, %struct.lpc32xx_tsc** %3, align 8
  %34 = call i32 @kfree(%struct.lpc32xx_tsc* %33)
  ret i32 0
}

declare dso_local %struct.lpc32xx_tsc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @free_irq(i32, %struct.lpc32xx_tsc*) #1

declare dso_local i32 @input_unregister_device(i32) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @kfree(%struct.lpc32xx_tsc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
