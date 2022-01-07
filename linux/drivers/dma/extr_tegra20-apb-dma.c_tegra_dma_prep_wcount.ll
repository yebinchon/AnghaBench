; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_prep_wcount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_prep_wcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tegra_dma_channel_regs = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*, %struct.tegra_dma_channel_regs*, i32)* @tegra_dma_prep_wcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_prep_wcount(%struct.tegra_dma_channel* %0, %struct.tegra_dma_channel_regs* %1, i32 %2) #0 {
  %4 = alloca %struct.tegra_dma_channel*, align 8
  %5 = alloca %struct.tegra_dma_channel_regs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %4, align 8
  store %struct.tegra_dma_channel_regs* %1, %struct.tegra_dma_channel_regs** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = sub nsw i32 %8, 4
  %10 = and i32 %9, 65532
  store i32 %10, i32* %7, align 4
  %11 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %22 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
