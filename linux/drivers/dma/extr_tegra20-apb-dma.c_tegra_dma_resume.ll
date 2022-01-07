; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.tegra_dma* }
%struct.tegra_dma = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEGRA_APBDMA_CHAN_CSRE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*)* @tegra_dma_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_resume(%struct.tegra_dma_channel* %0) #0 {
  %2 = alloca %struct.tegra_dma_channel*, align 8
  %3 = alloca %struct.tegra_dma*, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %2, align 8
  %4 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %5 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %4, i32 0, i32 0
  %6 = load %struct.tegra_dma*, %struct.tegra_dma** %5, align 8
  store %struct.tegra_dma* %6, %struct.tegra_dma** %3, align 8
  %7 = load %struct.tegra_dma*, %struct.tegra_dma** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_dma, %struct.tegra_dma* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %15 = load i32, i32* @TEGRA_APBDMA_CHAN_CSRE, align 4
  %16 = call i32 @tdc_write(%struct.tegra_dma_channel* %14, i32 %15, i32 0)
  br label %20

17:                                               ; preds = %1
  %18 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %2, align 8
  %19 = call i32 @tegra_dma_global_resume(%struct.tegra_dma_channel* %18)
  br label %20

20:                                               ; preds = %17, %13
  ret void
}

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i32) #1

declare dso_local i32 @tegra_dma_global_resume(%struct.tegra_dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
