; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_desc_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_desc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { i32, i32, i32 }
%struct.tegra_dma_desc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*, %struct.tegra_dma_desc*)* @tegra_dma_desc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_desc_put(%struct.tegra_dma_channel* %0, %struct.tegra_dma_desc* %1) #0 {
  %3 = alloca %struct.tegra_dma_channel*, align 8
  %4 = alloca %struct.tegra_dma_desc*, align 8
  %5 = alloca i64, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %3, align 8
  store %struct.tegra_dma_desc* %1, %struct.tegra_dma_desc** %4, align 8
  %6 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %10, i32 0, i32 1
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %2
  %15 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %15, i32 0, i32 1
  %17 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %17, i32 0, i32 2
  %19 = call i32 @list_splice_init(i32* %16, i32* %18)
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.tegra_dma_desc*, %struct.tegra_dma_desc** %4, align 8
  %22 = getelementptr inbounds %struct.tegra_dma_desc, %struct.tegra_dma_desc* %21, i32 0, i32 0
  %23 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %23, i32 0, i32 1
  %25 = call i32 @list_add_tail(i32* %22, i32* %24)
  %26 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %26, i32 0, i32 0
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
