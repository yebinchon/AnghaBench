; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra210-adma.c_tegra_adma_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.tegra_adma_chan = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@tegra_adma_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to get interrupt for %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @tegra_adma_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_adma_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.tegra_adma_chan*, align 8
  %5 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %6 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %7 = call %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan* %6)
  store %struct.tegra_adma_chan* %7, %struct.tegra_adma_chan** %4, align 8
  %8 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @tegra_adma_isr, align 4
  %12 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %13 = call i32 @dma_chan_name(%struct.dma_chan* %12)
  %14 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %15 = call i32 @request_irq(i32 %10, i32 %11, i32 0, i32 %13, %struct.tegra_adma_chan* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %20 = call i32 @tdc2dev(%struct.tegra_adma_chan* %19)
  %21 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %22 = call i32 @dma_chan_name(%struct.dma_chan* %21)
  %23 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %27 = call i32 @tdc2dev(%struct.tegra_adma_chan* %26)
  %28 = call i32 @pm_runtime_get_sync(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %25
  %32 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.tegra_adma_chan* %35)
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load %struct.tegra_adma_chan*, %struct.tegra_adma_chan** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_adma_chan, %struct.tegra_adma_chan* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dma_cookie_init(i32* %41)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %31, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.tegra_adma_chan* @to_tegra_adma_chan(%struct.dma_chan*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.tegra_adma_chan*) #1

declare dso_local i32 @dma_chan_name(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @tdc2dev(%struct.tegra_adma_chan*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @free_irq(i32, %struct.tegra_adma_chan*) #1

declare dso_local i32 @dma_cookie_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
