; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/extr_zx_dma.c_zx_dma_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_dma_dev = type { i64 }

@REG_ZX_DMA_ARB = common dso_local global i64 0, align 8
@REG_ZX_TC_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_SRC_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_DST_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@REG_ZX_CFG_ERR_IRQ_RAW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zx_dma_dev*)* @zx_dma_init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zx_dma_init_state(%struct.zx_dma_dev* %0) #0 {
  %2 = alloca %struct.zx_dma_dev*, align 8
  store %struct.zx_dma_dev* %0, %struct.zx_dma_dev** %2, align 8
  %3 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %2, align 8
  %4 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @REG_ZX_DMA_ARB, align 8
  %7 = add nsw i64 %5, %6
  %8 = call i32 @writel_relaxed(i32 0, i64 %7)
  %9 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %2, align 8
  %10 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_ZX_TC_IRQ_RAW, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel_relaxed(i32 -1, i64 %13)
  %15 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %2, align 8
  %16 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_ZX_SRC_ERR_IRQ_RAW, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 -1, i64 %19)
  %21 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %2, align 8
  %22 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_ZX_DST_ERR_IRQ_RAW, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 -1, i64 %25)
  %27 = load %struct.zx_dma_dev*, %struct.zx_dma_dev** %2, align 8
  %28 = getelementptr inbounds %struct.zx_dma_dev, %struct.zx_dma_dev* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_ZX_CFG_ERR_IRQ_RAW, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel_relaxed(i32 -1, i64 %31)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
