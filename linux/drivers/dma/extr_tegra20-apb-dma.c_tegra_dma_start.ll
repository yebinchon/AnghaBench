; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_tegra20-apb-dma.c_tegra_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_dma_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.tegra_dma_sg_req = type { %struct.tegra_dma_channel_regs }
%struct.tegra_dma_channel_regs = type { i32, i32, i32, i32, i32, i32 }

@TEGRA_APBDMA_CHAN_CSR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_APBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBSEQ = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_AHBPTR = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CHAN_WCOUNT = common dso_local global i32 0, align 4
@TEGRA_APBDMA_CSR_ENB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_dma_channel*, %struct.tegra_dma_sg_req*)* @tegra_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_dma_start(%struct.tegra_dma_channel* %0, %struct.tegra_dma_sg_req* %1) #0 {
  %3 = alloca %struct.tegra_dma_channel*, align 8
  %4 = alloca %struct.tegra_dma_sg_req*, align 8
  %5 = alloca %struct.tegra_dma_channel_regs*, align 8
  store %struct.tegra_dma_channel* %0, %struct.tegra_dma_channel** %3, align 8
  store %struct.tegra_dma_sg_req* %1, %struct.tegra_dma_sg_req** %4, align 8
  %6 = load %struct.tegra_dma_sg_req*, %struct.tegra_dma_sg_req** %4, align 8
  %7 = getelementptr inbounds %struct.tegra_dma_sg_req, %struct.tegra_dma_sg_req* %6, i32 0, i32 0
  store %struct.tegra_dma_channel_regs* %7, %struct.tegra_dma_channel_regs** %5, align 8
  %8 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %9 = load i32, i32* @TEGRA_APBDMA_CHAN_CSR, align 4
  %10 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %11 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @tdc_write(%struct.tegra_dma_channel* %8, i32 %9, i32 %12)
  %14 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %15 = load i32, i32* @TEGRA_APBDMA_CHAN_APBSEQ, align 4
  %16 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @tdc_write(%struct.tegra_dma_channel* %14, i32 %15, i32 %18)
  %20 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %21 = load i32, i32* @TEGRA_APBDMA_CHAN_APBPTR, align 4
  %22 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %23 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @tdc_write(%struct.tegra_dma_channel* %20, i32 %21, i32 %24)
  %26 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %27 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBSEQ, align 4
  %28 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @tdc_write(%struct.tegra_dma_channel* %26, i32 %27, i32 %30)
  %32 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %33 = load i32, i32* @TEGRA_APBDMA_CHAN_AHBPTR, align 4
  %34 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @tdc_write(%struct.tegra_dma_channel* %32, i32 %33, i32 %36)
  %38 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_dma_channel, %struct.tegra_dma_channel* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %2
  %47 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %48 = load i32, i32* @TEGRA_APBDMA_CHAN_WCOUNT, align 4
  %49 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @tdc_write(%struct.tegra_dma_channel* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %46, %2
  %54 = load %struct.tegra_dma_channel*, %struct.tegra_dma_channel** %3, align 8
  %55 = load i32, i32* @TEGRA_APBDMA_CHAN_CSR, align 4
  %56 = load %struct.tegra_dma_channel_regs*, %struct.tegra_dma_channel_regs** %5, align 8
  %57 = getelementptr inbounds %struct.tegra_dma_channel_regs, %struct.tegra_dma_channel_regs* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TEGRA_APBDMA_CSR_ENB, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @tdc_write(%struct.tegra_dma_channel* %54, i32 %55, i32 %60)
  ret void
}

declare dso_local i32 @tdc_write(%struct.tegra_dma_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
