; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imx_dmav1_readl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_imx-dma.c_imx_dmav1_readl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxdma_engine = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imxdma_engine*, i32)* @imx_dmav1_readl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_dmav1_readl(%struct.imxdma_engine* %0, i32 %1) #0 {
  %3 = alloca %struct.imxdma_engine*, align 8
  %4 = alloca i32, align 4
  store %struct.imxdma_engine* %0, %struct.imxdma_engine** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.imxdma_engine*, %struct.imxdma_engine** %3, align 8
  %6 = getelementptr inbounds %struct.imxdma_engine, %struct.imxdma_engine* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = add i32 %7, %8
  %10 = call i32 @__raw_readl(i32 %9)
  ret i32 %10
}

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
